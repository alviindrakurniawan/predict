import 'package:another_flushbar/flushbar.dart';
import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:scora/src/core/config/config.dart';
import 'package:scora/src/core/core.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/auth/auth.dart';
import 'package:scora/src/shared/shared.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  static const routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/images/welcome.png',
                    height: size.height * 0.6,
                    width: size.width * 1,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(Gap.l, 0, Gap.l, Gap.xl),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome',
                            style: context.displayMedium,
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.waving_hand,
                            size: 32,
                            color: Colors.orange.shade300,
                          )
                        ],
                      ),
                      SizedBox(height: Gap.l),
                      Text(
                          "Don't miss a goal! Get live match notifications and match results from your favorite teams and world's most prestigious competitions!",
                          style: context.labelLarge,
                          textAlign: TextAlign.center)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(Gap.l, 0, Gap.l, Gap.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomGreenFilledButton(
                title: "Get Started",
                onPressed: () {
                  context.push(SignupView.routeName);
                }),
            SizedBox(height: Gap.l),
            CustomLightGreenFilledButton(
                title: "I Already Have an Account",
                onPressed: (){
                  context.push(LoginView.routeName);
                })
          ],
        ),
      ),
    );
  }
}
