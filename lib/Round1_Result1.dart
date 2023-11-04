import 'package:flutter/services.dart';

import 'Home2.dart';
import 'package:flutter/material.dart';
import 'dart:html';
import 'Home3.dart';
import 'main.dart';

class R1R1 extends StatelessWidget {
  final score;
  R1R1({required this.score});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text(
              "SlumDog Millionaire",
              style: TextStyle(
                  fontSize: 21,
                  color: Colors.yellowAccent,
                  fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
          ),
          body: (score >= 3) ? Winner(score: score) : const Loser()),
    );
  }
}

class Winner extends StatelessWidget {
  final score;
  Winner({required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
            Color.fromARGB(255, 13, 130, 226),
            Color.fromARGB(255, 139, 64, 251),
            Colors.deepPurple
          ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              tileMode: TileMode.mirror)),
      child: Expanded(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Image.asset(
              'assets/congrats.jpg',
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(height: 25),
            Center(
              child: Text("Score: ${score} / 5 ",
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
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                "You have qualified for the Round 2.",
                style: TextStyle(
                    color: Colors.white,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (contest) => const Main()));
                //Navigator.pop(context);
              });
            },
            child: Text(
              "<< Back",
              style: TextStyle(
                  //backgroundColor: Colors.blueAccent,
                  color: Colors.white,
                  fontSize: 18),
            )),
        TextButton(
            onPressed: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (contest) => const Home3()));
              });
            },
            child: Text(
              "Continue >>",
              style: TextStyle(
                  //backgroundColor: Colors.blueAccent,
                  color: Colors.white,
                  fontSize: 18),
            ))
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
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
            Color.fromARGB(255, 13, 130, 226),
            Color.fromARGB(255, 139, 64, 251),
            Colors.deepPurple
          ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              tileMode: TileMode.mirror)),
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
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                "You have  not qualified for the next round.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,children: [ TextButton(
            onPressed: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (contest) => const Main()));
                //Navigator.pop(context);
              });
            },
            child: Text(
              "<< Back",
              style: TextStyle(
                  //backgroundColor: Colors.blueAccent,
                  color: Colors.white,
                  fontSize: 19),
            )),],)
          ],
        ),
      )),
    );
  }
}
