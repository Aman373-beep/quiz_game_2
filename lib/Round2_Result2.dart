import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'Home4.dart';

class R2R2 extends StatelessWidget {
  final score;
  R2R2({required this.score});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 12, 56, 231),
            title: Text(
              "SlumDog Millionaire",
              style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
          ),
          body: (score >= 8) ? Winner(score: score) : const Loser()),
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
            Color.fromARGB(255, 10, 7, 188),
            Color.fromARGB(255, 30, 72, 241),
            Color.fromARGB(255, 9, 131, 230),
            Colors.lightBlue,
          ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
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
              child: Text("Score: ${score} / 10 ",
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
                "You have qualified for the next round",
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
                  fontSize: 19),
            )),
        TextButton(
            onPressed: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (contest) => const Home4()));
              });
            },
            child: Text(
              "Continue >>",
              style: TextStyle(
                  //backgroundColor: Colors.blueAccent,
                  color: Colors.white,
                  fontSize: 19),
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
            Color.fromARGB(255, 10, 7, 188),
            Color.fromARGB(255, 30, 72, 241),
            Color.fromARGB(255, 9, 131, 230),
            Colors.lightBlue,
          ],  begin: Alignment.centerLeft,
              end: Alignment.centerRight,
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
                          color: Colors.white,
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
