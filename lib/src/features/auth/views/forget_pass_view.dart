import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/auth/auth.dart';
import 'package:scora/src/features/auth/services/auth_service.dart';
import 'package:scora/src/shared/shared.dart';
import '../../../core/core.dart';

class ForgetPassView extends HookConsumerWidget {
  const ForgetPassView({super.key});

  static const routeName = '/forget-password';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    final emailController = useTextEditingController();

    final formKey = useMemoized(GlobalKey<FormState>.new);

    Future<void> _forgetpass(BuildContext context, WidgetRef ref,{required String email}) async {
      try {
        final result = await ref.read(AuthServiceProvider).forgotPassword(
          email: email,
        );
        print(result);
        if (context.mounted) {
          if (result['data'] != null ) {
            // ref.read(sessionProviderProvider.notifier).set(result['data']['token']);
            showSuccessSnackbar(context: context, title: "Send OTP", messsage: "We already sent an OTP code to your email");
            context.push(ForgetPasswordOtpView.routeName,extra: emailController.text);
          } else {
            showFailedSnackbar(context: context, title: 'Forget Password Failed', messsage: result['responseMessage']);
          }
        }
      } catch ( e) {
        showFailedSnackbar(context: context, title: 'Forget Password Failed', messsage: '${e.toString()}');;
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
                    Text('Forgot Password 🔑', style: context.headlineLarge),
                    SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Enter your email address to get an OTP code to reset your password.',
                      style: context.bodyLarge,
                    ),
                    SizedBox(
                      height: Gap.xl,
                    ),
                    Text("Email", style: context.titleMedium),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: context.titleLarge,
                      validator: (value){
                        return validateEmailEmpty(value);
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
                              color: Colors.red), // Color when there's an error
                        ),
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
                    // MediaQuery.of(context).viewInsets.bottom
                        50),
                height: 60,
                width: double.infinity,
                child: CustomGreenFilledButton(
                  title: "Continue",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      _forgetpass(context, ref,email: emailController.text);
                    }

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
