import 'package:flutter/material.dart';
import 'package:scora/src/core/core.dart';

class WidgetStats extends StatelessWidget {
  final String StatName;
  final int homeValue;
  final int awayValue;

  const WidgetStats(
      {super.key,
      required this.StatName,
      this.homeValue = 0,
      this.awayValue = 0});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final total = homeValue + awayValue;

    // Prevent division by zero
    final double homePercentage = total > 0 ? homeValue / total : 0;
    final double awayPercentage = total > 0 ? awayValue / total : 0;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$homeValue', style: AppTextStyle.body16W600),
              Text('$StatName', style: AppTextStyle.body16W600),
              Text('$awayValue', style: AppTextStyle.body16W600),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RotatedBox(
                  quarterTurns: 2,
                  child: LinearProgressIndicator(
                    value: homePercentage,
                    minHeight: 12,
                    backgroundColor: Color(0xFFE0E0E0),
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xFF35383F)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: LinearProgressIndicator(
                  value: awayPercentage,
                  minHeight: 12,
                  backgroundColor: Color(0xFFE0E0E0),
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFFD700)),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
