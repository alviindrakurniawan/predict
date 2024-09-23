import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/features.dart';
import 'package:scora/src/features/predict/views/history_predict.dart';
import 'package:scora/src/features/profile/views/about_us_view.dart';
import 'package:scora/src/features/profile/views/edit_profile_view.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/features/profile/views/referral_view.dart';
import 'package:scora/src/shared/providers/remember_me.dart';
import 'package:scora/src/shared/shared.dart';

class ProfileView extends HookConsumerWidget {
  const ProfileView({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(profileControllerProvider);
    final size = MediaQuery.of(context).size;
    void _showLogoutModal(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.3,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Are you sure you want to logout?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomLightGreenFilledButton(title: "No",width: size.width*0.4, onPressed: () {}),
                    CustomGreenFilledButton(title: "Yes",width: size.width*0.4, onPressed: () async{
                      ref.read(sessionProviderProvider.notifier).reset();
                      ref.read(rememberMeProvider.notifier).reset();
                      await ref.read(prefProvider).removePref('token');
                      await ref.read(prefProvider).removePref('rememberMe');

                      context.go(WelcomeView.routeName);


                    })
                  ],
                ),
                SizedBox(height: 35),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        centerTitle: true,
        title: Text(
          'Account',
          style: context.headlineSmall,
        ),
      ),
      body: user.when(
        data: (userModel) {
          if (userModel == null) {
            return Center(child: Text('User not found'));
          }
          return Column(
            children: [
              // User Profile Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: userModel.profilePicPath == null
                          ? Icon(Icons.person, size: 50, color: Colors.white)
                          : null,
                      backgroundImage: userModel.profilePicPath == null
                          ? null
                          : NetworkImage(userModel.profilePicPath ??
                              'https://via.placeholder.com/150'),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userModel.name ?? '-',
                          style: context.titleLarge,
                        ),
                        SizedBox(height: 4),
                        Text(
                          userModel.email ?? '',
                          style: AppTextStyle.label14,
                        ),
                      ],
                    ),
                    Spacer(),
                    // IconButton(
                    //   icon: Icon(Icons.edit, color: Colors.green),
                    //   onPressed: () {
                    //     // Handle edit action
                    //   },
                    // ),
                  ],
                ),
              ),
              Divider(),

              // Menu Items
              Expanded(
                child: ListView(
                  children: [
                    _buildMenuItem(
                      context,
                      icon: Icons.person,
                      text: 'Personal Info',
                      onTap: () {
                        context.push(EditProfileView.routeName,
                            extra: userModel);
                      },
                    ),
                    // _buildMenuItem(
                    //   context,
                    //   icon: Icons.help_center,
                    //   text: 'Help Center',
                    //   onTap: () {
                    //     // Handle Help Center tap
                    //   },
                    // ),
                    _buildMenuItem(
                      context,
                      icon: Icons.info,
                      text: 'About Us',
                      onTap: () {
                        context.push(AboutUsView.routeName);
                      },
                    ),
                    _buildMenuItem(
                      context,
                      icon: Icons.card_giftcard,
                      text: 'Referral Code',
                      onTap: () {
                        context.push(ReferralView.routeName,
                            extra: userModel.referralCode);
                      },
                    ),
                    _buildMenuItem(
                      context,
                      icon: Icons.history,
                      text: 'History Predict',
                      onTap: () {
                       context.push(HistoryPredict.routeName);
                      },
                    ),
                    _buildMenuItem(
                      context,
                      icon: Icons.logout,
                      text: 'Logout',
                      onTap: () {
                        _showLogoutModal(context);
                      },
                      textColor: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
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
