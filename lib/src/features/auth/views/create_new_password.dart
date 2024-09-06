import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/auth/auth.dart';
import 'package:scora/src/features/auth/services/auth_service.dart';
import 'package:scora/src/shared/functions/common_function.dart';
import 'package:scora/src/shared/shared.dart';
import '../../../core/core.dart';

class CreateNewPasswordView extends HookConsumerWidget {
  final String email;

  const CreateNewPasswordView({required this.email});

  static const routeName = '/create-new-password';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    final passwordFocusNode = useFocusNode();
    final confirmPasswordFocusNode = useFocusNode();

    final formKey = useMemoized(GlobalKey<FormState>.new);

    final obsPass = useState(true);
    final obsConfirmPass = useState(true);

    Future<void> _createNewPasswrod(BuildContext context, WidgetRef ref) async {
      try {
        final token = await ref.watch(sessionProviderProvider);
        final String? deviceToken = await getDeviceToken();
        final result = await ref.read(AuthServiceProvider).createNewPassword(
            password: passwordController.text, email: email, token: token,deviceToken: deviceToken ?? "");
        if (context.mounted) {
          if (result['data'] != null) {
            showSuccessSnackbar(
                context: context,
                title: "Create New Password Success",
                messsage: "You have successfully create new password");
            context.push(LoginView.routeName);
          } else {
            showFailedSnackbar(
                context: context,
                title: 'Create New Password Failed',
                messsage: result['responseMessage']);
          }
        }
      } catch (e) {
        showFailedSnackbar(
            context: context,
            title: 'Create New Password Failed',
            messsage: '${e.toString()}');
        ;
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.fromLTRB(Gap.l, Gap.m, Gap.l, 0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: GestureDetector(
                        onTap: () {
                          context.pop(true);
                        },
                        child: Icon(Icons.arrow_back_rounded, size: 28),
                      ),
                    ),
                    SizedBox(
                      height: Gap.l,
                    ),
                    Text('Create new password 🔐',
                        style: context.headlineLarge),
                    SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Save the new password in a safe place, if you forget it then you have to do a forgot password again.',
                      style: context.bodyLarge,
                    ),
                    SizedBox(
                      height: Gap.xl,
                    ),
                    Text("Create a new password", style: context.titleMedium),
                    TextFormField(
                      controller: passwordController,
                      style: context.titleLarge,
                      obscureText: obsPass.value,
                      focusNode: passwordFocusNode,
                      onFieldSubmitted: (value) {
                        fieldFocusChange(context, passwordFocusNode,
                            confirmPasswordFocusNode);
                      },
                      validator: (value) {
                        return validatePassword(value);
                      },
                      decoration: InputDecoration(
                        hintText: '********',
                        hintStyle: TextStyle(color: Colors.grey),
                        errorStyle: TextStyle(fontSize: 14),
                        suffixIcon: IconButton(
                          onPressed: () {
                            obsPass.value = !obsPass.value;
                          },
                          icon: obsPass.value
                              ? Icon(Icons.visibility_off_rounded,
                                  color: Color(0xFF006400))
                              : Icon(Icons.visibility_rounded,
                                  color: Color(0xFF006400)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFF006400)), // Color when focused
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Color(0xFF006400)) // Color when unfocused
                            ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.red), // Color when there's an error
                        ),
                      ),
                    ),
                    SizedBox(height: Gap.m),
                    Text("Confirm a new password", style: context.titleMedium),
                    TextFormField(
                      controller: confirmPasswordController,
                      style: context.titleLarge,
                      obscureText: obsConfirmPass.value,
                      focusNode: confirmPasswordFocusNode,
                      onFieldSubmitted: (value) {},
                      validator: (value) {
                        return validateConfirmPassword(
                            value, passwordController.text);
                      },
                      decoration: InputDecoration(
                        hintText: '********',
                        hintStyle: TextStyle(color: Colors.grey),
                        errorStyle: TextStyle(fontSize: 14),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF006400)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF006400))),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              obsConfirmPass.value = !obsConfirmPass.value;
                            },
                            icon: obsConfirmPass.value
                                ? Icon(Icons.visibility_off_rounded,
                                    color: Color(0xFF006400))
                                : Icon(Icons.visibility_rounded,
                                    color: Color(0xFF006400))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.fromLTRB(Gap.l, Gap.l, Gap.l,
                    MediaQuery.of(context).viewInsets.bottom + 50),
                height: 60,
                width: double.infinity,
                child: CustomGreenFilledButton(
                  title: "Continue",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      _createNewPasswrod(context, ref);
                    }
                    // context.push(WelcomeView.routeName);
                  },
                ),
              ),
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
