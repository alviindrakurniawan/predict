// class LeagueOverviewe extends HookConsumerWidget {
//   const LeagueOverviewe({required this.title, required this.listMatch});
//
//   final String title;
//   final List<SoccerFixtureResult>? listMatch;
//
//   static const routeName = '/league-overview';
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           leagueName,
//           style: Theme.of(context).textTheme.headlineSmall,
//         ),
//         leading: GestureDetector(
//           onTap: () {
//             Navigator.of(context).pop(true);
//           },
//           child: Icon(
//             Icons.arrow_back,
//             size: 28,
//           ),
//         ),
//       ),
//       body: Container(
//         width: double.infinity,
//         padding: EdgeInsets.fromLTRB(24, 24, 24, 12),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('Today, 28 August', style: TextStyle(fontSize: 18)),
//                   TextButton(
//                     onPressed: () {},
//                     child: Row(
//                       children: [
//                         Text('See all',
//                             style: TextStyle(
//                                 color: Theme.of(context).primaryColor,
//                                 fontSize: 14)),
//                         SizedBox(width: 8),
//                         Icon(Icons.arrow_forward,
//                             color: Theme.of(context).primaryColor),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//                 decoration: BoxDecoration(
//                   color: Color(0xFFF8F9FA),
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.1),
//                       spreadRadius: 1,
//                       blurRadius: 5,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                   border: Border.all(color: Color(0xFFEEEEEE), width: 1),
//                 ),
//                 child: Column(
//                   children: matches.map((match) {
//                     return Column(
//                       children: [
//                         Row(
//                           mainAxisSize: MainAxisSize.min,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Icon(Icons.sports_soccer,
//                                 size: 40,
//                                 color: Theme.of(context).primaryColor),
//                             SizedBox(width: 20),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(match['title']!,
//                                     style:
//                                         Theme.of(context).textTheme.titleSmall),
//                                 SizedBox(height: 4),
//                                 Text(match['group']!,
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .labelMedium),
//                               ],
//                             ),
//                             Spacer(),
//                           ],
//                         ),
//                         Divider(color: Color(0xFFEEEEEE), thickness: 1),
//                         SizedBox(height: 16),
//                         Table(
//                           columnWidths: const {
//                             0: FlexColumnWidth(1),
//                             1: FlexColumnWidth(1),
//                             2: FlexColumnWidth(1),
//                             3: FlexColumnWidth(1),
//                           },
//                           children: [
//                             TableRow(children: [
//                               Padding(
//                                 padding: EdgeInsets.symmetric(vertical: 15),
//                                 child: Text(match['time']!,
//                                     style:
//                                         Theme.of(context).textTheme.titleSmall),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.symmetric(vertical: 15),
//                                 child: Text(match['team1']!,
//                                     style:
//                                         Theme.of(context).textTheme.titleSmall),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.symmetric(vertical: 15),
//                                 child: Text(match['score']!,
//                                     style:
//                                         Theme.of(context).textTheme.titleSmall),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.symmetric(vertical: 15),
//                                 child: Text(match['team2']!,
//                                     style:
//                                         Theme.of(context).textTheme.titleSmall),
//                               ),
//                             ]),
//                           ],
//                         ),
//                       ],
//                     );
//                   }).toList(),
//                 ),
//               ),
//               SizedBox(height: 24),
//               Text('Top Scorers',
//                   style: TextStyle(fontSize: 18), textAlign: TextAlign.start),
//               SizedBox(height: 24),
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//                 decoration: BoxDecoration(
//                   color: Color(0xFFF8F9FA),
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.1),
//                       spreadRadius: 1,
//                       blurRadius: 5,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                   border: Border.all(color: Color(0xFFEEEEEE), width: 1),
//                 ),
//                 child: Column(
//                   children: List.generate(topScorers.length, (index) {
//                     final scorer = topScorers[index];
//                     return Column(
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               width: 36,
//                               height: 38,
//                               alignment: Alignment.center,
//                               margin: const EdgeInsets.only(right: 10),
//                               child: Text(scorer['position']!,
//                                   style:
//                                       Theme.of(context).textTheme.titleMedium),
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(scorer['name']!,
//                                     style:
//                                         Theme.of(context).textTheme.titleSmall),
//                                 SizedBox(height: 6),
//                                 Text(scorer['team']!,
//                                     style: TextStyle(fontSize: 14)),
//                               ],
//                             ),
//                           ],
//                         ),
//                         if (index < topScorers.length - 1)
//                           Divider(color: Color(0xFFEEEEEE), thickness: 1),
//                       ],
//                     );
//                   }),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
