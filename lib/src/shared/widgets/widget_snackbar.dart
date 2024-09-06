

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void showFailedSnackbar({required BuildContext context,required String title,required String messsage}) async{
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Flushbar(
      icon: Icon(
        Icons.info_rounded,
        size: 32,
        color: Colors.red,
      ),
      leftBarIndicatorColor: Colors.red[400],
      flushbarPosition: FlushbarPosition.TOP,
      backgroundGradient: LinearGradient(
        colors: [Colors.red.shade100, Colors.red.shade50],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      margin: EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      titleColor: Colors.black87,
      messageColor: Colors.black87,
      title: title,
      message: messsage,
      duration: Duration(seconds: 3),
    )..show(context);
  });
}


void showSuccessSnackbar({required BuildContext context, required String title, required String messsage}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Flushbar(
      icon: Icon(
        Icons.check_circle_outline_rounded,
        size: 32,
        color: Colors.green,
      ),
      flushbarPosition: FlushbarPosition.TOP,
      backgroundGradient: LinearGradient(
        colors: [Colors.green.shade100, Colors.green.shade50],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      borderWidth: 2,
      borderColor: Colors.white,
      margin: EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      titleColor: Colors.black87,
      messageColor: Colors.black87,
      title: title,
      message: messsage,
      duration: Duration(seconds: 3),
    ).show(context);
  });
}