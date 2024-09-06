import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:scora/src/features/auth/services/auth_service.dart';
import 'package:scora/src/features/auth/views/components/country_picker.dart';
import 'package:scora/src/features/features.dart';
import 'package:scora/src/features/profile/models/user_model.dart';
import 'package:scora/src/shared/constants/countries_data.dart';
import 'package:scora/src/shared/shared.dart';
import '../../../core/core.dart';
import 'package:go_router/go_router.dart';
import 'package:exposed/extensions/extensions.dart';

class EditProfileView extends HookConsumerWidget {
  final UserModel? userModel;

  const EditProfileView({this.userModel});

  static const routeName = '/edit-profile';

  Map<String, String> convertListToMap(List<Map<String, String>> list) {
    final Map<String, String> map = {};
    for (var element in list) {
      map[element['countryId']!] = element['countryName']!;
    }
    return map;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    final fullNameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final dateOfBirthController = useTextEditingController();
    final countryController = useTextEditingController();

    final changeDate = useState<DateTime>(DateTime.now());

    final formKey = useMemoized(GlobalKey<FormState>.new);

    final selectedDate = useState<DateTime?>(null);
    final selectedCountryId = useState<String>(''); // Store selected country ID
    final photoUrl = useState<String>('');
    final countriesMap = convertListToMap(countriesData);

    void _showCountryPicker({
      required BuildContext context,
      required ValueNotifier<String> selectedCountryId,
      required Map<String, String> countries,
    }) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return CountryPickerModal(
            selectedCountryId: selectedCountryId,
            countries: countries,
            countryController: countryController,
          );
        },
      );
    }


    void _showDobPicker() {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding:
                  EdgeInsets.only(right: 10, top: 10),
                  child: TextButton(
                    child: Text(
                      'Done',
                      style: TextStyle(
                          color: Colors.blue, fontSize: 18),
                    ),
                    onPressed: () {
                      dateOfBirthController.text =
                      "${selectedDate.value!.day}/${selectedDate.value!.month}/${selectedDate.value!.year}";
                      context.pop(true);
                    },
                  ),
                ),
                Expanded(
                  child: CupertinoDatePicker(
                    dateOrder: DatePickerDateOrder.dmy,
                    initialDateTime: selectedDate.value ??
                        DateTime.now().toUtc(),
                    maximumDate: DateTime.now().toUtc(),
                    mode: CupertinoDatePickerMode.date,
                    itemExtent: 60,
                    onDateTimeChanged: (DateTime newDate) {
                      selectedDate.value = newDate;
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Future<void> _editProfile() async {
      final profileController = ref.read(profileControllerProvider.notifier);
      final profileState = ref.watch(profileControllerProvider);
      await profileController.editProfile(
        fullname: fullNameController.text,
        dob: DateFormat('yyyy-MM-dd')
            .format(selectedDate.value ?? DateTime.now())
            .toString(),
        countryId: selectedCountryId.value.toString(),
      );

      profileState.when(
        data: (userModel) {
          if (userModel != null) {
            context.go(ProfileView.routeName);
            showSuccessSnackbar(
              context: context,
              title: 'Edit Profile Success',
              messsage: "You have successfully edited your profile",
            );
          }
        },
        loading: () {},
        error: (error, stackTrace) {
          showFailedSnackbar(
            context: context,
            title: 'Edit Profile Failed',
            messsage: error.toString(),
          );
        },
      );
    }

    useEffect(() {
      fullNameController.text = userModel?.name ?? '';
      selectedDate.value =
          userModel?.dob != null ? DateTime.parse(userModel!.dob ?? "") : null;
      dateOfBirthController.text = userModel?.dob ?? '';

      if (userModel?.countryId != null) {
        selectedCountryId.value = userModel!.countryId.toString();
        countryController.text = countriesMap[selectedCountryId.value] ?? '';
      }
      photoUrl.value = userModel?.profilePicPath ?? '';

      return null;
    }, []);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Personal Info',
            style: context.headlineSmall,
            textAlign: TextAlign.left,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            context.pop(true);
          },
          child: Icon(
            Icons.arrow_back,
            size: 28,
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            Form(
              key: formKey,
              child: SliverPadding(
                padding: EdgeInsets.fromLTRB(Gap.l, Gap.m, Gap.l, 0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    SizedBox(height: Gap.l),
                    Container(
                      alignment: Alignment.center,
                      child: Stack(children: [
                        CircleAvatar(
                          radius: 60,
                          child: photoUrl.value.isEmpty
                              ? Icon(Icons.person,
                                  size: 90, color: Colors.white)
                              : null,
                          backgroundImage: photoUrl.value.isNotEmpty
                              ? NetworkImage(photoUrl.value)
                              : null,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              // controller.selectMultipleImage();
                              // controller.openImagePicker();
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.edit,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(height: Gap.l),
                    Text("Full Name", style: context.titleMedium),
                    TextFormField(
                      controller: fullNameController,
                      keyboardType: TextInputType.text,
                      style: context.titleLarge,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Full name is required';
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: 'Full Name',
                        hintStyle: TextStyle(color: Colors.grey),
                        errorStyle: TextStyle(fontSize: 14),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF006400)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF006400)),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                    SizedBox(height: Gap.m),
                    Text("Date of Birth", style: context.titleMedium),
                    GestureDetector(
                      onTap: () {
                        _showDobPicker();
                      },
                      child: AbsorbPointer(
                        child: TextFormField(
                          controller: dateOfBirthController,
                          style: context.titleLarge,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Date of birth is required';
                            }
                          },
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.calendar_month_rounded,
                              color: primaryColor,
                              size: 32,
                            ),
                            hintText: selectedDate.value == null
                                ? 'Select your date of birth'
                                : '${selectedDate.value!.day}/${selectedDate.value!.month}/${selectedDate.value!.year}',
                            hintStyle: TextStyle(color: Colors.grey),
                            errorStyle: TextStyle(fontSize: 14),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF006400)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF006400)),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Gap.m),
                    Text("Country", style: context.titleMedium),
                    GestureDetector(
                      onTap: () {
                        _showCountryPicker(
                          context: context,
                          selectedCountryId: selectedCountryId,
                          countries: convertListToMap(countriesData),
                        );
                      },
                      child: AbsorbPointer(
                        child: TextFormField(
                          controller: countryController,
                          style: context.titleLarge,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Country is required';
                            }
                          },
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              color: primaryColor,
                              size: 32,
                            ),
                            hintText: selectedCountryId.value.isEmpty
                                ? 'Select your country'
                                : countriesMap[selectedCountryId.value],
                            hintStyle: TextStyle(color: Colors.grey),
                            errorStyle: TextStyle(fontSize: 14),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF006400)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF006400)),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Gap.l),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(Gap.l, Gap.l, Gap.l, Gap.xl),
        child: Row(
          children: [
            Expanded(
              child: CustomLightGreenFilledButton(
                title: "Cancel",
                onPressed: () {
                  context.go(ProfileView.routeName);
                },
              ),
            ),
            SizedBox(width: Gap.m),
            Expanded(
              child: CustomGreenFilledButton(
                title: "Save",
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    await _editProfile();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
