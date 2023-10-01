import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThanksPage extends StatelessWidget {
  const ThanksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 192, 169),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 250),
            child: Text(
              "THANKS FOR REVIEWING",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 50,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              "We appreciate you taking the time to share your thoughts. Your feedback helps us improve and enhance your experience.",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w100,
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else {
                  exit(0);
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              child: Text("EXIT"))
        ],
      ),
    );
  }
}
