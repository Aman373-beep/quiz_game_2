import 'dart:async';

import 'package:flutter/material.dart';
import 'Round3_Result3.dart';
import 'main.dart';

class Home4 extends StatefulWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> {
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
          body: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              /*gradient: LinearGradient(
                    colors: [
                  Color.fromARGB(255, 13, 130, 226),
                  Color.fromARGB(255, 139, 64, 251),
                  Colors.deepPurple
                ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    tileMode: TileMode.mirror)*/
            ),
            child: Another(),
          )),
    );
  }
}

class Another extends StatefulWidget {
  const Another({Key? key}) : super(key: key);

  @override
  State<Another> createState() => _AnotherState();
}

class _AnotherState extends State<Another> {
  @override
  var i = 0;

  var CA = {
    0: 'A',
    1: 'C',
    2: 'A',
    3: 'C',
    4: 'D',
    5: 'A',
    6: 'B',
    7: 'A',
    8: 'D',
    9: 'C',
    10: 'D',
    11: 'A',
    12: 'B',
    13: 'C',
    14: 'C',
  };
  final qsn = [
    'Who is the founder of Uber?',
    'Which year did England won the FIFA World Cup?',
    'Which developed and shipped the first commercial Hard Disk Drive (HDD)?',
    'How many breeds of elephant are there?',
    'How many digits are in Pi?',
    '"Greed, for lack of a better word, is good." - Which movie dialogue is this?',
    'What does P.M stands for?',
    'How many Earths can fit inside the sun?',
    'Gold is a chemical element with symbol ____',
    'Who is the author of harry potter?',
    'What is the name of the largest star in our solar system ?',
    'In which year was Animated Aladdin released ?',
    'What is the speed of earth orbit around the sun ?',
    '"The way to get started is to quit talking and begin doing." - Whose quote is this?',
    'When did adolf hitler died?'
  ];
  final ans = [
    'Travis kalanick',
    'Lee Byung-chul',
    'Larry Page',
    'Alexis ohanian',
    '2000',
    '2004',
    '1966',
    '1970',
    'IBM',
    'Microsoft',
    'Ryzen',
    'Intel',
    '4',
    '5',
    '3',
    '8',
    '20.2 trillion',
    '43 trillion',
    '10.1 trillion',
    '62.8 trillion',
    '	Wall Street (1987)',
    'The Sixth Sense (1999)',
    'Titanic (2002)',
    'Forrest Gump (2004)',
    'Prime Meredian',
    'Post meridiem',
    'Post meridien',
    'Prime meridiem',
    '1.3 million Earths.',
    '1.4 million Earths.',
    '1 million Earths.',
    '2.2 million Earths.',
    'Hg',
    'Ag',
    'Ca',
    'Au',
    'James Joyce',
    'George Orwell',
    'J.K Rowling',
    'Stephen King',
    'Sirius',
    'Vega',
    'Rigel',
    'Sun',
    '1992',
    '1993',
    '1997',
    '2002',
    '40000 m/s',
    '30000 m/s',
    '25000 m/s',
    '35000 m/s',
    'Marshal Mathers',
    'Steve Jobs',
    'Walt Disney',
    'Oprah Winfrey',
    '28th April 1945',
    '29th April 1945',
    '30th April 1945',
    '28th May 1946'
  ];
  int add = 0;
  var sec = 16;
  void timer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (sec > 0) {
          sec--;
        } else if (i == qsn.length - 1) {
          timer.cancel();
        } else if (sec == 0) {
          if ((i < qsn.length - 1)) {
            i++;
            despose();
          } else {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => R3R3(score: add))));
          }
        }
      });
    });
  }

  void initState() {
    super.initState();
    timer();
  }

  void despose() {
    sec = 16;
  }

  void dispose() {
    super.dispose();
  }

  void Response(int a, var b) {
    if (CA[a] == b) {
      add++;
    }
  }

  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3.2,
                  ),
                  Container(
                    height: 48,
                    width: 200,
                    child: Center(
                      child: Text(
                        "Round 3",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 231, 210, 23),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(33)),
                      color: Colors.white,
                      /* gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 10, 7, 188),
                              Color.fromARGB(255, 30, 72, 241),
                              Color.fromARGB(255, 9, 131, 230),
                              Colors.lightBlue,
                            ],
                            tileMode: TileMode.mirror,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)*/
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Center(
                          child: Text(
                            sec.toString(),
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        CircularProgressIndicator(
                          strokeWidth: 6.3,
                          //backgroundColor: Colors.blueGrey,
                          valueColor: AlwaysStoppedAnimation(
                            //Color.fromARGB(255, 19, 33, 226),
                            Color.fromARGB(255, 239, 217, 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
                /*gradient: LinearGradient(colors: [
                    Colors.pinkAccent,
                    Colors.purple,
                    Colors.lightBlue
                  ], tileMode: TileMode.mirror)*/
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                          qsn[i],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 237, 215, 11)),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Response(i, 'A');
                  if ((i < qsn.length - 1)) {
                    i++;
                    despose();
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => R3R3(score: add))));
                  }
                });
              },
              child: Container(
                height: 50,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "A.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 243, 219, 7),
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Center(
                      child: Text(
                        ans[4 * i],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 235, 213, 9),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Response(i, 'B');
                  if ((i < qsn.length - 1)) {
                    i++;
                    despose();
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => R3R3(score: add))));
                  }
                });
              },
              child: Container(
                height: 50,
                width: 300,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "B.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 246, 223, 17),
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Center(
                      child: Text(
                        ans[4 * i + 1],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 241, 218, 14),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Response(i, 'C');
                  if ((i < qsn.length - 1)) {
                    i++;
                    despose();
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => R3R3(score: add))));
                  }
                });
              },
              child: Container(
                height: 50,
                width: 300,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "C.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 238, 215, 9),
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 45),
                    Center(
                      child: Text(
                        ans[4 * i + 2],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 238, 215, 8),
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    /*gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple,
                          Color.fromARGB(255, 13, 130, 226),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight)*/
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Response(i, 'D');
                  if ((i < qsn.length - 1)) {
                    i++;
                    despose();
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => R3R3(score: add))));
                  }
                });
              },
              child: Container(
                height: 50,
                width: 300,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "D.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 234, 211, 10),
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Center(
                        child: Text(
                      ans[4 * i + 3],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 223, 202, 11),
                        fontSize: 20,
                      ),
                    ))
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
