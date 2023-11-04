import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'Home4.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class R3R3 extends StatelessWidget {
  final score;
  R3R3({required this.score});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black54,
            title: Text(
              "SlumDog Millionaire",
              style: TextStyle(
                  fontSize: 21,
                  color: Colors.yellowAccent,
                  fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
          ),
          body: (score >= 14) ? Winner(score: score) : const Loser()),
    );
  }
}

class Winner extends StatelessWidget {
  final score;
  Winner({required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Expanded(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Container(
              height: 120,
              width: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  'assets/1_M.jpg',
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Text("Score: ${score} / 15 ",
                  style: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 24,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Congratlations. ",
                style: TextStyle(
                    color: Color.fromARGB(255, 236, 213, 8),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                "You have won 1 million dollar.",
                style: TextStyle(
                    color: Color.fromARGB(255, 229, 207, 8),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            w1(),
          ],
        ),
      )),
    );
  }
}

class w1 extends StatefulWidget {
  const w1({Key? key}) : super(key: key);

  @override
  State<w1> createState() => _w1State();
}

class _w1State extends State<w1> {
  @override
  Widget build(BuildContext contest) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {
              setState(() {
                /* Navigator.push(context,
                    MaterialPageRoute(builder: (contest) => const Main()));*/
                //Navigator.pop(context);
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else if (Platform.isIOS) {
                  exit(0);
                }
              });
            },
            child: Text(
              "<< Exit",
              style: TextStyle(
                  //backgroundColor: Colors.blueAccent,
                  color: Colors.white,
                  fontSize: 19),
            )),
      ],
    );
  }
}

class Loser extends StatefulWidget {
  const Loser({Key? key}) : super(key: key);

  @override
  State<Loser> createState() => _LoserState();
}

class _LoserState extends State<Loser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.yellow),
      child: Expanded(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Image.asset(
              'assets/sorry.jpg',
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Sorry. ",
                style: TextStyle(
                    color: Color.fromARGB(255, 237, 214, 7),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                "You have failed to be the slumdog millionaire.",
                style: TextStyle(
                    color: Color.fromARGB(255, 244, 220, 9),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contest) => const Main()));
                        //Navigator.pop(context);
                      });
                    },
                    child: Text(
                      "<< Back",
                      style: TextStyle(
                          //backgroundColor: Colors.blueAccent,
                          color: Color.fromARGB(255, 240, 217, 11),
                          fontSize: 19),
                    )),
              ],
            )
          ],
        ),
      )),
    );
  }
}
