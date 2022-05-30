import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:splash_screen/screens/second_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class FSplash extends StatefulWidget {
  const FSplash({Key? key}) : super(key: key);

  @override
  State<FSplash> createState() => _FSplashState();
}

class _FSplashState extends State<FSplash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Container(
          child: createGradient(),
        ),
        nextScreen: FirstScreen());
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => SecondScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          createGradient(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 90, width: 90, child: Image.asset('assets/cbst.png')),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'WelCome To',
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black),
                      speed: Duration(milliseconds: 300),
                    )
                  ],
                  pause: Duration(seconds: 5),
                  displayFullTextOnTap: true,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText('CBST Community',
                      speed: Duration(milliseconds: 300),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                      colors: [Colors.white, Colors.black]),
                ],
                pause: Duration(seconds: 5),
                displayFullTextOnTap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget createGradient() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, Color.fromARGB(255, 82, 37, 21)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
        shape: BoxShape.rectangle,
      ),
    );
