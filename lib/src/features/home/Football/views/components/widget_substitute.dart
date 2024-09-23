import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:scora/src/core/themes/theme_text.dart';

class WidgetSubstitute extends StatelessWidget {
  final String number;
  final String player;


  const WidgetSubstitute({
    super.key,
   this.number= "",
     this.player=""
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child:  Row(
        mainAxisAlignment:
        MainAxisAlignment.start,
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 8),
            width: 28,
            height: 28,
            decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(
                    100),
                border: Border.all(
                    color:
                    Color(0xFFE0E0E0))),
            child: Center(
                child: Text(
                  number,
                  style: AppTextStyle.titleSmall,
                )),
          ),
          Expanded(
            child: Text(
              player,
              style: AppTextStyle.label14,
              overflow: TextOverflow.clip,
            ),
          )
        ],
      )
    );
  }
}
