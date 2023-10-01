import 'package:flutter/material.dart';
import 'package:candycrush/thankspage.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade700,
      body: Column(
        children: [
          Row(children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.all(20),
              child: Image.asset("assets/images/candycrush.png"),
            ),
            const Text("Play Candy Crush",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ]),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
                child: Text(
                    "Candy Crush is a popular match-three puzzle game developed by King. The game was first released for Facebook in April 2012 and later expanded to other platforms, including iOS, Android, and Windows Phone. It quickly gained widespread popularity and became one of the most successful and addictive mobile games of its time.Candy Crush is a popular match-three puzzle game developed by King. The game was first released for Facebook in April 2012 and later expanded to other platforms, including iOS, Android, and Windows Phone. It quickly gained widespread popularity and became one of the most successful and addictive mobile games of its time.")),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  width: 150,
                  height: 300,
                  color: Colors.purple,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  width: 150,
                  height: 300,
                  color: Color.fromARGB(255, 154, 73, 7),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  width: 150,
                  height: 300,
                  color: Colors.blue,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  width: 150,
                  height: 300,
                  color: Color.fromARGB(255, 29, 185, 133),
                  margin: EdgeInsets.all(10),
                ),
              ])),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThanksPage()));
              },
              child: Text("Start"),
            ),
          ),
        ],
      ),
    );
  }
}
