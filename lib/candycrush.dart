import 'package:flutter/material.dart';
import 'package:candycrush/screen2.dart';

class candyCrush extends StatelessWidget {
  const candyCrush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(left: 80) +
                      EdgeInsets.only(top: 60) +
                      EdgeInsets.only(right: 20),
                  child: Image.asset('assets/images/candycrush.png')),
              Container(
                  margin: EdgeInsets.only(top: 60),
                  width: 100,
                  height: 100,
                  child: Column(children: [
                    Text("PLAY",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                    Text("Candy",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                    Text("Crush",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ])),
            ],
          ),
          Container(
              margin: EdgeInsets.all(30),
              width: 350,
              height: 500,
              color: Colors.red,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screen2()),
                  );
                },
                child: Center(
                    child: Text("Start",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 56,
                            fontWeight: FontWeight.bold))),
              ))
        ],
      ),
    );
  }
}
