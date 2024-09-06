import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scora/src/features/features.dart';
import 'package:scora/src/features/profile/controllers/referral_controller.dart';
import 'package:scora/src/shared/shared.dart';

class ReferralView extends ConsumerWidget {
  final String referralCode;

  ReferralView({required this.referralCode});

  static const routeName = '/referral';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final referralController = ref.watch(referralControllerProvider);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Referral Code',
            style: context.headlineSmall,
            textAlign: TextAlign.left,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: referralController.when(
        data: (referrals) {
          final totalUsers = referrals?.length ?? 0;

          return Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 4),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F9FA),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Referral Code Users',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$totalUsers User',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Referral Code',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        referralCode ?? "-",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.copy),
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: referralCode));
                          showSuccessSnackbar(
                            context: context,
                            title: "Referralcode",
                            messsage: "Referral code copied to clipboard",
                          );
                        },
                      ),
                    ],
                  ),
                  Divider(color: Colors.green, thickness: 2),
                  SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F9FA),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'List User',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$totalUsers User',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  referrals == null || referrals.isEmpty
                      ? Center(
                          child: Text(
                            'No referrals available.',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: referrals.length,
                          itemBuilder: (context, index) {
                            final referral = referrals[index];
                            return Container(
                              color: Color(0xFFF8F9FA),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.grey.shade500,
                                  child: Icon(Icons.person)),
                                title: Text(referral.username),
                              ),
                            );
                          },
                        ),
                ],
              ),
            ),
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) =>
            Center(child: Text('Failed to load referral data: $error')),
      ),
    );
  }
}
