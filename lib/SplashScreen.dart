import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:io';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: const Splash1());
  }
}

class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void timer() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Main())));
  }

  void initState() {
    super.initState();
    timer();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Center(
            child: Image.asset('assets/slumdog milinaire logo.png',
                height: 300, width: 700)),
      ),
    ));
  }
}
