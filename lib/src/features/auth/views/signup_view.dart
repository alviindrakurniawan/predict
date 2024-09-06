import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:scora/src/features/auth/auth.dart';
import 'package:scora/src/features/auth/controllers/auth1_controller.dart';
import 'package:scora/src/features/auth/services/auth_service.dart';
import 'package:scora/src/features/auth/views/create_profile.dart';
import 'package:scora/src/features/auth/views/signup_otp_view.dart';
import 'package:scora/src/features/features.dart';
import 'package:scora/src/shared/functions/common_function.dart';
import 'package:scora/src/shared/providers/remember_me.dart';
import 'package:scora/src/shared/shared.dart';
import '../../../core/core.dart';
import 'package:go_router/go_router.dart';
import 'package:exposed/extensions/extensions.dart';

class SignupView extends HookConsumerWidget {
  const SignupView({super.key});

  static const routeName = '/signup';



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final emailController = useTextEditingController();
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final referalCodeController = useTextEditingController();

    final emailFocusNode = useFocusNode();
    final usernameFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();
    final confirmPasswordFocusNode = useFocusNode();
    final referalCodeFocusNode = useFocusNode();

    final formKey = useMemoized(GlobalKey<FormState>.new);

    final obsPass = useState(true);
    final obsConfirmPass = useState(true);
    final rememberMe = useState(false);

    final AuthController = ref.read(authController1Provider.notifier);

    Future<void> _signup(BuildContext context, WidgetRef ref,
        {required String email,
          required String password,
          required String username,
          required String refferalcode}) async {
      try {
        final String? deviceToken = await getDeviceToken();
        final result = await ref.read(AuthServiceProvider).signup(
          email: email,
          password: password,
          username: username,
          referralCode: refferalcode,
          deviceToken: deviceToken ?? "",
        );

        if (context.mounted) {
          if (result['data'] != null) {
            //set token
            ref
                .read(sessionProviderProvider.notifier)
                .set(result['data']['token']);
            await ref
                .read(prefProvider)
                .setPref('token', result['data']['token']);

            //set remember me
            if(rememberMe.value = true){
              ref.read(rememberMeProvider.notifier).set(true);
            }
            context.push(SignupOtpView.routeName, extra: email);
          } else {
            showFailedSnackbar(
                context: context,
                title: 'SignUp Failed',
                messsage: result['responseMessage']);
          }
        }
      } catch (e) {
        showFailedSnackbar(
            context: context,
            title: 'SignUp Failed',
            messsage: '${e.toString()}');
        ;
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: GestureDetector(
          onTap: () {
            context.pop(true);
          },
          child: Icon(Icons.arrow_back, size: 28),
        ),
        flexibleSpace: SafeArea(
          child: Center(
            child: Container(
              width: size.width / 2,
              child: LinearProgressIndicator(
                minHeight: 12.0,
                borderRadius: BorderRadius.circular(90),
                value: 0.5,
                backgroundColor: Colors.grey.shade100,
                color: Color(0xFFFFD700),
              ),
            ),
          ),
        ),
        // title:
      ),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Stack(
            children: [
              Container(
                height: size.height - MediaQuery.of(context).viewInsets.bottom,
                padding: const EdgeInsets.only(left: Gap.l, right: Gap.l),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Container(
                      //   margin: EdgeInsets.fromLTRB(0, Gap.m, 0, Gap.l),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     children: [
                      //       GestureDetector(
                      //         onTap: () {
                      //           context.pop(true);
                      //         },
                      //         child: Icon(Icons.arrow_back, size: 28),
                      //       ),
                      //       Spacer(),
                      //       Container(
                      //         width: size.width / 2,
                      //         child: LinearProgressIndicator(
                      //           minHeight: 12.0,
                      //           borderRadius: BorderRadius.circular(90),
                      //           value: 0.7,
                      //           backgroundColor: Color(0xFFEEEEEE),
                      //           color: Color(0xFFFFD700),
                      //         ),
                      //       ),
                      //       Spacer(),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(height: Gap.l),
                      Text('Create an Account ', style: context.headlineLarge),
                      SizedBox(height: 12),
                      Text(
                          'Enter email and password. If you forget, then you have to do forgot password.',
                          style: context.bodyLarge),
                      SizedBox(
                        height: Gap.l,
                      ),
                      Text("Email", style: context.titleMedium),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        style: context.titleLarge,
                        focusNode: emailFocusNode,
                        onFieldSubmitted: (term) {
                          fieldFocusChange(
                              context, emailFocusNode, usernameFocusNode);
                        },
                        validator: (value) {
                          return validateEmail(value);
                        },
                        decoration: const InputDecoration(
                          hintText: 'example@yourdomain.com',
                          hintStyle: TextStyle(color: Colors.grey),
                          errorStyle: TextStyle(fontSize: 14),
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
                                color:
                                    Colors.red), // Color when there's an error
                          ),
                        ),
                      ),
                      SizedBox(height: Gap.m),
                      Text("Username", style: context.titleMedium),
                      TextFormField(
                        controller: usernameController,
                        keyboardType: TextInputType.name,
                        style: context.titleLarge,
                        focusNode: usernameFocusNode,
                        onFieldSubmitted: (value) {
                          fieldFocusChange(
                              context, usernameFocusNode, passwordFocusNode);
                        },
                        validator: (value) {
                          return validateUserName(value);
                        },
                        decoration: const InputDecoration(
                          hintText: 'Username',
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
                        ),
                      ),
                      SizedBox(height: Gap.m),
                      Text("Password", style: context.titleMedium),
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
                                color:
                                    Colors.red), // Color when there's an error
                          ),
                        ),
                      ),
                      SizedBox(height: Gap.m),
                      Text("Confirmation password", style: context.titleMedium),
                      TextFormField(
                        controller: confirmPasswordController,
                        style: context.titleLarge,
                        obscureText: obsConfirmPass.value,
                        focusNode: confirmPasswordFocusNode,
                        onFieldSubmitted: (value) {
                          fieldFocusChange(context, confirmPasswordFocusNode,
                              referalCodeFocusNode);
                        },
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
                      SizedBox(height: Gap.m),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(
                              value: rememberMe.value,
                              onChanged: (value) {
                                rememberMe.value = value ?? false;
                              },
                              activeColor: Color(0xFF006400),
                              checkColor: Colors.white,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                          SizedBox(width: 8),
                          // Spacing between checkbox and text
                          Text('Remember me', style: context.titleMedium),
                        ],
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Text("Referral Code", style: context.titleMedium),
                      TextFormField(
                        controller: referalCodeController,
                        keyboardType: TextInputType.name,
                        style: context.titleLarge,
                        focusNode: referalCodeFocusNode,
                        decoration: const InputDecoration(
                          hintText: '127319827389123',
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child:
              // )
            ],
          ),
        ),
      ),

      // resizeToAvoidBottomInset: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(Gap.l, Gap.l, Gap.l, 50),
        child: CustomGreenFilledButton(
            title: "Continue",
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                await _signup(context, ref,
                    email: emailController.text,
                    password: passwordController.text,
                    username: usernameController.text,
                    refferalcode: referalCodeController.text);
              }
              // context.push(HomeView.routeName);
            }),
      ),
    );
  }
}
