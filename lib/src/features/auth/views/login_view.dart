import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/auth/auth.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/features/auth/services/auth_service.dart';
import 'package:scora/src/features/features.dart';
import 'package:scora/src/shared/functions/common_function.dart';
import 'package:scora/src/shared/providers/remember_me.dart';
import 'package:scora/src/shared/shared.dart';
import '../../../core/core.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({super.key});

  static const routeName = '/login';



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final formKey = useMemoized(GlobalKey<FormState>.new);

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();
    final obsPass = useState(true);

    final rememberMe = useState(false);

    Future<void> _login(BuildContext context, WidgetRef ref,
        {required String email, required String password}) async {
      try {
        final String? deviceToken = await getDeviceToken();
        final result = await ref.read(AuthServiceProvider).login(
          email: email,
          password: password,
          deviceToken: deviceToken ?? "",
        );
        if (context.mounted) {
          if (result['data'] != null) {
            ref.read(sessionProviderProvider.notifier)
            //set token
                .set(result['data']['token']);
            await ref.read(prefProvider).setPref('token', result['data']['token']);

            //set remember me
            if(rememberMe.value = true){
              ref.read(prefProvider).setPref('rememberMe',true);
            }

            context.push(HomeView.routeName);
            showSuccessSnackbar(
                context: context,
                title: 'Login',
                messsage: "You have successfully logged in");
          } else {
            showFailedSnackbar(
                context: context,
                title: 'Login Failed',
                messsage: result['responseMessage']);
          }
        }
      } catch (e) {
        showFailedSnackbar(
            context: context, title: 'Login Failed', messsage: '${e.toString()}');
        ;
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(Gap.l, Gap.m, Gap.l, 0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                  Text('Hello there 👋', style: context.headlineLarge),
                  SizedBox(
                    width: 16,
                  ),

                  SizedBox(
                    height: Gap.xl,
                  ),
                  Text("Email", style: context.titleMedium),
                  // SizedBox(height: Gap.m,),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    focusNode: emailFocusNode,
                    onFieldSubmitted: (value) {
                      fieldFocusChange(
                          context, emailFocusNode, passwordFocusNode);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email is required';
                      }
                    },
                    style: context.titleLarge,
                    decoration: const InputDecoration(
                      hintText: 'example@yourdomain.com',
                      hintStyle: TextStyle(color: Colors.grey),
                      errorStyle: TextStyle(fontSize: 14),                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFF006400)), // Color when focused
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFF006400)) // Color when unfocused
                          ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red), // Color when there's an error
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Gap.m,
                  ),
                  Text("Password", style: context.titleMedium),
                  TextFormField(
                    controller: passwordController,
                    style: context.titleLarge,
                    obscureText: obsPass.value,
                    focusNode: passwordFocusNode,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password is required';
                      }
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
                            color: Color(0xFF006400)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFF006400))
                          ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Gap.xl,
                  ),
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
                    height: Gap.huge,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {
                          context.push(ForgetPassView.routeName);
                        },
                        child: Text(
                          'Forgot password?',
                          style: AppTextStyle.titleGreen20,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: SafeArea(
        child: Container(
            margin: EdgeInsets.fromLTRB(Gap.l, Gap.l, Gap.l, 50),
            height: 60,
            child: CustomGreenFilledButton(
                title: "Sign In",
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    await _login(context, ref,
                        email: emailController.text,
                        password: passwordController.text);
                  }
                  // _login(context, ref,email: emailController.text, password: passwordController.text);
                })),
      ),
    );
  }
}
