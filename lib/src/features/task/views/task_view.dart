import 'dart:io';

import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/features.dart';
import 'package:scora/src/features/task/controllers/task_controller.dart';
import 'dart:developer' as developer;

import 'package:scora/src/shared/shared.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TaskView extends HookConsumerWidget {
  const TaskView({super.key});

  static const routeName = '/task';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listTask = ref.watch(taskControllerProvider);
    final user = ref.watch(profileControllerProvider);
    final formKey = useMemoized(GlobalKey<FormState>.new);
    RewardedAd? _rewardedAd;

    final twitterUsername = useState<String>("");

    final size = MediaQuery.of(context).size;

    final textController = useCTextController();

    void popUpTask({required BuildContext context}) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            clipBehavior: Clip.antiAlias,
            child: Container(
              width: double.infinity,
              padding:
                  EdgeInsets.only(top: 16.0, left: 16, right: 16, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
              ),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Please input your twitter username',
                      style: context.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: textController,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        hintText: "Twitter Username",
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
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'This username cannot be changed. Please enter carefully',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          autofocus: true,
                          style: TextButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          context.pop(true);
                        },
                        child: Text('Cancel')),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    void gointToUrl(String url) async {
      if (await canLaunchUrlString(url)) {
        await launchUrlString(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    final adUnitId = Platform.isAndroid
        ? 'ca-app-pub-8667073989782861/5138054951'
        : 'ca-app-pub-8667073989782861/2400210971';

    // Ios Predict
    // ca-app-pub-8667073989782861/2400210971

    void loadAd() {
      RewardedAd.load(
          adUnitId: adUnitId,
          request: const AdRequest(),
          rewardedAdLoadCallback: RewardedAdLoadCallback(
            // Called when an ad is successfully received.
            onAdLoaded: (ad) {
              ad.fullScreenContentCallback = FullScreenContentCallback(
                  // Called when the ad showed the full screen content.
                  onAdShowedFullScreenContent: (ad) {
                developer.log("Masok 1");
              },
                  // Called when an impression occurs on the ad.
                  onAdImpression: (ad) {
                developer.log("Masok 2");
              },
                  // Called when the ad failed to show full screen content.
                  onAdFailedToShowFullScreenContent: (ad, err) {
                developer.log("Gagal");
                // Dispose the ad here to free resources.
                ad.dispose();
              },
                  // Called when the ad dismissed full screen content.
                  onAdDismissedFullScreenContent: (ad) {
                developer.log("dispose 1");
                ref.read(profileControllerProvider.notifier).getUserInfo();
                showSuccessSnackbar(
                    context: context, title: "Watch Ads", messsage: "Success");
                // Dispose the ad here to free resources.
                ad.dispose();
              },
                  // Called when a click is recorded for an ad.
                  onAdClicked: (ad) {
                developer.log("click ");
              });

              debugPrint('$ad loaded.');
              developer.log("click 1");
              // Keep a reference to the ad so you can show it later.
              _rewardedAd = ad;
              _rewardedAd?.show(onUserEarnedReward:
                  (AdWithoutView ad, RewardItem rewardItem) {
                // Reward the user for watching an ad.
              });
            },
            // Called when an ad request failed.
            onAdFailedToLoad: (LoadAdError error) {
              debugPrint('RewardedAd failed to load: $error');
              showFailedSnackbar(
                  context: context, title: "Watch Ads", messsage: "$error");
            },
          ));
    }

    return listTask.when(
        data: (response) {
          developer.log('TaskView: $response');
          if (response != null && response.isEmpty) {
            return Container(
              height: 100,
              child: Center(
                child: Text(
                  'No Task available',
                  style: AppTextStyle.headlineSmall,
                ),
              ),
            );
          }
          return SafeArea(
            child: Container(
              color: Colors.white,
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    scrolledUnderElevation: 0.0,
                    pinned: true,
                    floating: true,
                    snap: true,
                    backgroundColor: Colors.white,
                    // toolbarHeight: 60,
                    title: Text(
                      'Task',
                      style: context.headlineSmall,
                    ),
                    actions: [
                      user.when(
                          data: (user) {
                            if(user?.twitterUsername != null){
                              twitterUsername.value = user!.twitterUsername??"";
                            }
                            return Container(
                              height: 35,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 8),
                              margin: EdgeInsets.only(right: 24),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  '${user?.predictToken.toString() ?? "0"} Points',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            );
                          },
                          error: (error, stack) => Container(
                                height: 35,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 8),
                                margin: EdgeInsets.only(right: 24, left: 20),
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                          loading: () => Container(
                                height: 35,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 8),
                                margin: EdgeInsets.only(right: 24),
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ))
                    ],
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                        padding: EdgeInsets.only(right: 24, left: 24, top: 24),
                        child: Text(
                          'Earn more tokens by completing tasks to Prədiction upcoming matches. The more tasks you complete, the better your chances of climbing to the top of the leaderboard.',
                          style: TextStyle(
                              color: Color(0xFF818181),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                          textAlign: TextAlign.justify,
                        )),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        var data = response[index];
                        return Container(
                          margin: EdgeInsets.only(top: 24, right: 24, left: 24),
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F9FA),
                            borderRadius: BorderRadius.circular(8),
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xFFEEEEEE),
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: ListTile(
                            onTap: () {
                              if (data.taskName == "Watch Ads") {
                                loadAd();
                              } else {
                                gointToUrl(data.taskUrl);
                                if(twitterUsername.value ==""){
                                  popUpTask(context: context);
                                // Hit api verif
                                }else{
                                  // Hit api verif
                                }
                              }
                            },
                            title: Text(
                              data.taskName,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                              overflow: TextOverflow.clip,
                            ),
                            trailing: Container(
                              width: 40,
                              height: 20,
                              decoration: BoxDecoration(
                                color: data.isCompleted
                                    ? Colors.grey[200]
                                    : Color(0xFFDAFFDA),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: data.isCompleted
                                      ? Colors.grey.shade200
                                      : primaryColor,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '+${data.token}',
                                  style: TextStyle(
                                    color: data.isCompleted
                                        ? Colors.grey
                                        : primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: response.length,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        error: (error, stack) =>
            Center(child: Text('Error: ${error.toString()}')),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
