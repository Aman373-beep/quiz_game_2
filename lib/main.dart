import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_game_2/SplashScreen.dart';
import 'Home.dart';
import 'Home2.dart';
import 'Home3.dart';
import 'Home4.dart';
import 'dart:html';

void main() {
  runApp(const Splash());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/home': (context) => const Home()},
      debugShowCheckedModeBanner: false,
      home: _Second(),
    );
  }
}

class _Second extends StatefulWidget {
  const _Second({Key? key}) : super(key: key);

  @override
  State<_Second> createState() => _SecondState();
}

class _SecondState extends State<_Second> {
  @override
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              Image.asset(
                'assets/slumdog milinaire logo.png',
                height: 100,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (() {
                  Navigator.pushNamed(context, '/home');
                }),
                child: Container(
                  height: 50,
                  width: 300,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.gamepad,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 85,
                      ),
                      Text(
                        "Start",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 0.7),
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
                height: 30,
              ),
              InkWell(
                onTap: (() {}),
                child: Container(
                  height: 50,
                  width: 300,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.leaderboard,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Text(
                        "Highest Score",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 0.7),
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
                height: 30,
              ),
              GestureDetector(
                onTap: (() {
                  SystemNavigator.pop();
                  exit(0);
                }),
                child: Container(
                  height: 50,
                  width: 300,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 85,
                      ),
                      Text(
                        "Quit",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 0.7),
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
          )),
        ),
      ),
    );
  }
}
