import 'package:exposed/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:scora/src/core/themes/theme_text.dart';

class WidgetSubstitution extends StatelessWidget {
  final String time;
  final String playerIn;
  final String playerOut;

  const WidgetSubstitution({
    super.key,
    required this.time,
    required this.playerIn,
    required this.playerOut,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 20,
            child: Text(
              "$time'",
              style: AppTextStyle.label14,
              overflow: TextOverflow.clip,
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(4),
                          color: Color(0xFFF75555)),
                      child: Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.white,
                        size: 12,
                      )),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    playerIn,
                    style: AppTextStyle.label14,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(4),
                          color: Color(0xFF12D18E)),
                      child: Icon(
                        Icons.arrow_upward_rounded,
                        color: Colors.white,
                        size: 12,
                      )),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    playerOut,
                    style: AppTextStyle.label14,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
