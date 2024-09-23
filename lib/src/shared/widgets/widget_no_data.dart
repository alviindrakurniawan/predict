import 'package:flutter/material.dart';

class WidgetNoData extends StatelessWidget {
  final EdgeInsets margin;
  final String text;
  const WidgetNoData({super.key, this.margin = const EdgeInsets.all(16),this.text= 'No data available'});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: margin,
      width: double.infinity,
      height: size.height * 0.5,
      decoration: BoxDecoration(
          color: Color(0xFFF8F9FA),
          border: Border.all(color: Color(0xFFEEEEEE)),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
         text,
          style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 12,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
