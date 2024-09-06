// import 'package:exposed/extensions/extensions.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:scora/src/core/core.dart';
// import 'package:scora/src/features/home/models/soccer_fixture.dart';
//
// class MatchCard extends StatelessWidget {
//   final String title;
//   final String group;
//   final Function() onPressedIcon;
//   final String leagueLogo;
//   final List<SoccerFixtureResult>? listFixture;
//   final List<MatchDetails> matchDetails;
//
//   const MatchCard({
//     Key? key,
//     required this.leagueLogo,
//     required this.title,
//     required this.group,
//     required this.onPressedIcon,
//     required this.matchDetails,
//     this.listFixture,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//       decoration: BoxDecoration(
//         color: Color(0xFFFAFAFA),
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.3),
//             spreadRadius: 1,
//             blurRadius: 5,
//             offset: Offset(0, 4),
//           ),
//         ],
//         border: Border.all(color: Color(0xFFEEEEEE), width: 1),
//       ),
//       child: Column(
//         children: [
//           Row(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 width: 40,
//                 height: 40,
//                 child: leagueLogo != null && leagueLogo!.isNotEmpty
//                     ? Image.network(
//                         leagueLogo!,
//                         fit: BoxFit.contain,
//                         errorBuilder: (context, error, stackTrace) {
//                           return Icon(
//                             Icons.sports_soccer,
//                             size: 40,
//                             color: Colors.black54,
//                           );
//                         },
//                       )
//                     : Icon(
//                         Icons.sports_soccer,
//                         size: 40,
//                         color: Colors.black54,
//                       ),
//               ),
//               SizedBox(width: 20),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(title, style: context.titleSmall,textAlign: TextAlign.center,),
//                   // SizedBox(height: 4),
//                   // Text(group, style: Theme.of(context).textTheme.labelMedium),
//                 ],
//               ),
//               Spacer(),
//               IconButton(
//                 onPressed: onPressedIcon,
//                 icon: Icon(
//                   Icons.navigate_next,
//                   size: 40,
//                   color: Colors.black54,
//                 ),
//               )
//             ],
//           ),
//           Divider(color: Color(0xFFEEEEEE), thickness: 1),
//           SizedBox(height: 16),
//           Table(
//             columnWidths: const {
//               0: FlexColumnWidth(0.5),
//               1: FlexColumnWidth(1),
//               2: FlexColumnWidth(0.5),
//               3: FlexColumnWidth(1),
//             },
//             children: matchDetails.map((match) {
//               return TableRow(
//                   decoration: BoxDecoration(
//                     color: match.backgroundColor,
//                   ),
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(vertical: 15),
//                       child: Text(match.time, style: AppTextStyle.title12),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(vertical: 15),
//                       child: Text(match.homeTeam, style: AppTextStyle.title12),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(vertical: 15),
//                       child: Text(match.score, style: AppTextStyle.title12),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(vertical: 15),
//                       child: Text(match.awayTeam, style: AppTextStyle.title12),
//                     ),
//                   ]);
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class MatchDetails {
//   final String time;
//   final String homeTeam;
//   final String awayTeam;
//   final String score;
//   final Color backgroundColor;
//
//   MatchDetails({
//     required this.time,
//     required this.homeTeam,
//     required this.awayTeam,
//     required this.score,
//     required this.backgroundColor,
//   });
// }
