import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/features.dart';
import 'package:scora/src/features/predict/views/history_predict.dart';
import 'package:scora/src/features/profile/views/edit_profile_view.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/profile/views/referral_view.dart';
import 'package:scora/src/shared/providers/remember_me.dart';
import 'package:scora/src/shared/shared.dart';

class AboutUsView extends HookConsumerWidget {
  const AboutUsView({super.key});

  static const routeName = '/about-us';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          title: Text(
            'About Us',
            style: context.headlineSmall,
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
        body: Column(
          children: [
            SizedBox(
                width: size.width*0.5,
                height: size.width*0.5,
                child: Image.asset('assets/icons/logo.png')),
            Text('Prədict v0.1.0', style: context.headlineSmall),
            // User Profile Section
            Divider(),

            // Menu Items
            Expanded(
              child: ListView(
                children: [

                ],
              ),
            ),
          ],
        ));
  }

  Widget _buildMenuItem(BuildContext context,
      {required IconData icon,
      required String text,
      Widget? trailing,
      VoidCallback? onTap,
      Color? textColor}) {
    return ListTile(
      minTileHeight: 75,
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
        child: Icon(icon, color: Theme.of(context).primaryColor),
      ),
      title: Text(text, style: context.titleLarge),
      trailing: trailing ?? Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
