import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/auth/auth.dart';
import 'package:scora/src/shared/shared.dart';
import '../../../core/core.dart';

class InputWalletView extends HookConsumerWidget {
  const InputWalletView({super.key});

  static const routeName = '/input-wallet';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    final walletController = useTextEditingController();

    final formKey = useMemoized(GlobalKey<FormState>.new);

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
                value: 0.7,
                backgroundColor: Colors.grey.shade100,
                color: Color(0xFFFFD700),
              ),
            ),
          ),
        ),
        // title:
      ),
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

                    Text('Wallet Crypto', style: context.headlineLarge),
                    SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Please enter your crypto wallet code to proceed.',
                      style: context.bodyLarge,
                    ),
                    SizedBox(
                      height: Gap.xl,
                    ),
                    Text("Wallet Code Crypto", style: context.titleMedium),
                    TextFormField(
                      controller: walletController,
                      keyboardType: TextInputType.emailAddress,
                      style: context.titleLarge,
                      decoration: const InputDecoration(
                        hintText: '1298371826418247189',
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
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                margin: EdgeInsets.fromLTRB(Gap.l, Gap.l, Gap.l, 0),
                height: 60,
                width: double.infinity,
                child: CustomGreenFilledButton(
                  title: "Continue",
                  onPressed: () {
                    context.push(CreateProfileView.routeName);
                  },
                ),
              ),
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
