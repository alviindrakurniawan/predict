import 'package:flutter/material.dart';
import 'package:scora/src/core/themes/theme_color.dart';

class CustomGreenFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  final bool isDisabled;
  final double borderRad;

  const CustomGreenFilledButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.isDisabled = false,
    this.width = double.infinity,
    this.height = 58,
    this.borderRad = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: isDisabled
            ? []
            : [
                BoxShadow(
                  color: Color(0x40006400),
                  offset: Offset(4, 8),
                  blurRadius: 24,
                  spreadRadius: 0,
                ),
              ],
        borderRadius: BorderRadius.circular(8), // Adjust as needed
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          autofocus: true,
          style: TextButton.styleFrom(
            backgroundColor: isDisabled ? Colors.grey : primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRad),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )),
    );
  }
}

class CustomLightGreenFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  final double borderRad;

  const CustomLightGreenFilledButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 58,
    this.borderRad = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), // Adjust as needed
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: greenLightColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRad),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(color: primaryColor, fontSize: 16),
          )),
    );
  }
}

class CustomGreyFilledButtom extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  final double borderRad;

  const CustomGreyFilledButtom({
    Key? key,
    required this.title,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 58,
    this.borderRad = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), // Adjust as needed
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: Color(0xFFa9a9a9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRad),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(color: Colors.grey, fontSize: 16),
          )),
    );
  }
}
