import 'package:flutter/material.dart';

class AccountSetupDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green.withOpacity(0.1),
                    ),
                  ),
                  Icon(
                    Icons.account_circle,
                    size: 80,
                    color: Colors.green,
                  ),
                  Positioned(
                    top: 0,
                    right: 20,
                    left: 20,
                    child: Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.green,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 20,
                    left: 20,
                    child: Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Account Setup Successful!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Please wait a moment, we are preparing for you.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
