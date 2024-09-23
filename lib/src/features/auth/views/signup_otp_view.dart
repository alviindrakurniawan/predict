import 'dart:async';

import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:scora/src/features/auth/services/auth_service.dart';
import 'package:scora/src/features/auth/views/create_new_password.dart';
import 'package:scora/src/features/features.dart';
import 'package:scora/src/shared/functions/common_function.dart';
import 'package:scora/src/shared/shared.dart';

import '../../../core/core.dart';

class SignupOtpView extends HookConsumerWidget {
  const SignupOtpView({required this.email});

  final String email;

  static const routeName = '/register-otp';

  Future<void> _verifyOTPRegister(BuildContext context, WidgetRef ref,
      {required String otp}) async {
    try {
      final String? deviceToken = await getDeviceToken();
      final result = await ref
          .read(AuthServiceProvider)
          .verifyRegisterOTP(email: email, otp: otp, deviceToken: deviceToken ?? "");
      if (context.mounted) {
        if (result['data'] != null) {
          ref
              .read(sessionProviderProvider.notifier)
              .set(result['data']['token']);
          context.push(CreateProfileView.routeName);
        } else {
          showFailedSnackbar(
              context: context,
              title: 'Verify Register OTP Failed',
              messsage: result['responseMessage']);
        }
      }
    } catch (e) {
      showFailedSnackbar(
          context: context,
          title: 'Verify Register OTP Failed',
          messsage: '${e}');
      ;
    }
  }

  Future<void> _sendOtpAgain(BuildContext context, WidgetRef ref) async {
    try {
      final result = await ref.read(AuthServiceProvider).sendOTPRegister(
            email: email,
          );
      if (context.mounted) {
        if (result['responseMessage'] == 'OTP Sent Successfully!') {
          showSuccessSnackbar(
              context: context,
              title: "Send OTP",
              messsage: "We already sent an OTP code to your email");
        } else {
          showFailedSnackbar(
              context: context,
              title: 'Send OTP Register Failed',
              messsage: result['responseMessage']);
        }
      }
    } catch (e) {
      showFailedSnackbar(
          context: context,
          title: 'Send OTP Register Failed',
          messsage: '${e.toString()}');
      ;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final countdownTimer = useState<int>(55);

    useEffect(() {
      final timerSubscription = Timer.periodic(Duration(seconds: 1), (timer) {
        if (countdownTimer.value > 0) {
          countdownTimer.value--;
        } else {
          timer.cancel();
        }
      });

      return () => timerSubscription.cancel();
    }, [countdownTimer.value]);

    useEffect(() {
      _sendOtpAgain(context, ref);
    }, []);

    final pinController = useTextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    Text('Verify Email 📩', style: context.headlineLarge),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'We have sent the OTP verification code to your email address. Check your email and enter the code below.',
                      style: context.bodyLarge,
                    ),
                    SizedBox(height: Gap.xxl),
                    Align(
                      alignment: Alignment.center,
                      child: Pinput(
                        controller: pinController,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        length: 4,
                        keyboardType: TextInputType.number,
                        onChanged: (String pin) {
                          print(pin);
                        },
                        defaultPinTheme: PinTheme(
                          width: 84,
                          height: 70,
                          textStyle: context.headlineSmall,
                          decoration: BoxDecoration(
                            color: Color(0xFFFAFAFA),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xFFEEEEEE)),
                          ),
                        ),
                        focusedPinTheme: PinTheme(
                          width: 84,
                          height: 70,
                          textStyle: context.headlineSmall,
                          decoration: BoxDecoration(
                            color: Color(0xFFFAFAFA),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xFF006400)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Gap.xxl,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn't receive email?", style: context.bodyLarge),
                        TextButton(
                            onPressed: countdownTimer.value > 0
                                ? null
                                : () async {
                                    await _sendOtpAgain(context, ref);
                                    countdownTimer.value = 55;
                                  },
                            child: Text("Resend",
                                style: TextStyle(
                                    color: primaryColor, fontSize: 16)))
                      ],
                    ),
                    SizedBox(height: Gap.m),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                            "You can resend code in ${countdownTimer.value} s",
                            style: context.bodyLarge)),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.fromLTRB(Gap.l, Gap.l, Gap.l,
                    MediaQuery.of(context).viewInsets.bottom + 50),
                width: double.infinity,
                child: CustomGreenFilledButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        _verifyOTPRegister(context, ref,
                            otp: pinController.text);
                      }
                    },
                    title: "Confirm"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
