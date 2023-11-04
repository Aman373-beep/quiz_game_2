import 'dart:async';

import 'package:flutter/material.dart';
import 'Round2_Result2.dart';
import 'Home.dart';
import 'Home2.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
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
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                  Color.fromARGB(255, 3, 38, 180),
                  Color.fromARGB(255, 8, 53, 234),
                  Colors.blue,
                  Colors.lightBlue,
                ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    tileMode: TileMode.clamp)),
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
    4: 'A',
    5: 'B',
    6: 'B',
    7: 'A',
    8: 'A',
    9: 'C'
  };
  final qsn = [
    "How many time zones are there in Russia? ",
    "What’s the national animal of Australia?",
    "Which is the largest forest in the world?",
    "Brass gets discoloured in air because of the presence of which of the following gases in air?",
    "Nuclear sizes are expressed in a unit named",
    "'.MOV' extension refers usually to what kind of file?",
    "Grand Central Terminal, Park Avenue, New York is the world's",
    "What’s the national flower of Japan?",
    'Pixar’s first feature-length movie?',
    'How many keys does a classic piano have?'
  ];
  final ans = [
    '11',
    '13',
    '10',
    '12',
    'Kiwi',
    'Kangaroo',
    'Red Kangaroo',
    'Python',
    'The Amazon',
    'The Taiga.',
    'Primorye Forest',
    'Valdivian Rainforest.',
    'Oxygen',
    'Hydrogen sulphide',
    'Carbon dioxide',
    'Nitrogen',
    'Fermi',
    'angstrom',
    'newton',
    'tesla',
    'Image file',
    'movie file',
    'Audio file',
    'MS Office document',
    'largest railway station',
    'highest railway station',
    'longest railway station',
    'None of the above',
    'Cherry Blossom',
    'Dalia',
    'White Rose',
    'Water Lily',
    'Cars',
    'Toy Story',
    'Up',
    'Toy Story 2',
    '90',
    '89',
    '88',
    '87'
  ];
  int add = 0;

  var sec = 20;
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
                MaterialPageRoute(builder: ((context) => R2R2(score: add))));
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
    sec = 20;
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
                        "Round 2",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(33)),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 10, 7, 188),
                              Color.fromARGB(255, 30, 72, 241),
                              Color.fromARGB(255, 9, 131, 230),
                              Colors.lightBlue,
                            ],
                            tileMode: TileMode.mirror,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
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
                          backgroundColor: Colors.blueGrey,
                          valueColor: AlwaysStoppedAnimation(
                            Color.fromARGB(255, 19, 33, 226),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
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
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 10, 7, 188),
                    Colors.blue,
                    Colors.blueGrey,
                  ], tileMode: TileMode.mirror)),
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
                              color: Colors.white),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 40,
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
                            builder: ((context) => R2R2(score: add))));
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
                        color: Colors.white,
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
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 10, 7, 188),
                          Color.fromARGB(255, 30, 72, 241),
                          Color.fromARGB(255, 9, 131, 230),
                          Colors.lightBlue,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight)),
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
                            builder: ((context) => R2R2(score: add))));
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
                        color: Colors.white,
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
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 10, 7, 188),
                          Color.fromARGB(255, 30, 72, 241),
                          Color.fromARGB(255, 9, 131, 230),
                          Colors.lightBlue,
                          // Colors.blueGrey,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight)),
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
                            builder: ((context) => R2R2(score: add))));
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
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 45),
                    Center(
                      child: Text(
                        ans[4 * i + 2],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 10, 7, 188),
                          Color.fromARGB(255, 30, 72, 241),
                          Color.fromARGB(255, 9, 131, 230),
                          Colors.lightBlue,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight)),
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
                            builder: ((context) => R2R2(score: add))));
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
                        color: Colors.white,
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
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ))
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 10, 7, 188),
                          Color.fromARGB(255, 30, 72, 241),
                          Color.fromARGB(255, 9, 131, 230),
                          Colors.lightBlue,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
