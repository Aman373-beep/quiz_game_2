import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'dart:html';
import 'Round1_Result1.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Round1(),
    );
  }
}

class Round1 extends StatefulWidget {
  const Round1({Key? key}) : super(key: key);

  @override
  State<Round1> createState() => _Round1();
}

class _Round1 extends State<Round1> {
  @override
  var i = 0;

  var CA = {0: 'B', 1: 'A', 2: 'D', 3: 'A', 4: 'C'};
  final qsn = [
    "What is the capital of Mongolia ?",
    "Who designed the national flag of Bangladesh ?",
    "Who is Brack Obama ?",
    "Who is the inventor of CellPhone ?",
    "What is the syntax to terminate loop in C++  programming language?"
  ];
  final ans = [
    'New Delhi',
    'Ulaanbaatar',
    'Madagascar',
    'Istanbul',
    'Quamrul Hassan',
    'Rabindranath Tagore',
    'Francis Hopkinson',
    'Shib Narayan Das',
    '43rd US president',
    'Current US president',
    '42th US president',
    '44th US president',
    'Martin Cooper',
    'Alexander Grahambell',
    'Edward Ryan',
    'Steve Wazniak',
    'continue',
    'exit()',
    'break',
    'false'
  ];
  int add = 0;
  var sec = 25;
  void timer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (sec > 0) {
          sec--;
        } else if (sec == 0) {
          if ((i < qsn.length - 1)) {
            i++;
            despose();
          } else if (i == qsn.length - 1) {
            timer.cancel();
          } else {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => R1R1(score: add))));
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
    sec = 25;
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
    return Scaffold(
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
      body: Container(
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
                              "Round 1",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(33)),
                              gradient: LinearGradient(
                                  colors: [
                                    // Colors.deepPurple,
                                    Colors.purple,
                                    //Colors.pinkAccent,
                                    // Colors.lightBlue,
                                    Color.fromARGB(255, 13, 130, 226),
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
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                              CircularProgressIndicator(
                                strokeWidth: 6.3,
                                backgroundColor: Colors.blue,
                                valueColor:
                                    AlwaysStoppedAnimation(Colors.purple),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
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
                          Colors.pinkAccent,
                          Colors.purple,
                          Colors.lightBlue
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
                    height: 30,
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
                                  builder: ((context) => R1R1(score: add))));
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
                            "A.",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 50,
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
                                Colors.deepPurple,
                                Color.fromARGB(255, 13, 130, 226),
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
                                  builder: ((context) => R1R1(score: add))));
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
                            width: 50,
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
                                Colors.deepPurple,
                                Color.fromARGB(255, 13, 130, 226),
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
                        dispose();
                        Response(i, 'C');
                        if ((i < qsn.length - 1)) {
                          i++;
                          despose();
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => R1R1(score: add))));
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
                          SizedBox(width: 50),
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
                                Colors.deepPurple,
                                Color.fromARGB(255, 13, 130, 226),
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
                                  builder: ((context) => R1R1(score: add))));
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
                          Center(
                            child: Text(
                              "D.",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            ans[4 * i + 3],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(33)),
                          gradient: LinearGradient(
                              colors: [
                                Colors.deepPurple,
                                Color.fromARGB(255, 13, 130, 226),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
