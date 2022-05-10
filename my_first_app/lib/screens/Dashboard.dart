import 'dart:math';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                text: "My ",
                style: TextStyle(fontSize: 18.0),
                children: [
                  TextSpan(
                      text: "Flutter ",
                      style: TextStyle(
                        fontSize: 56.0,
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text: "App",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.purpleAccent,
                      )),
                ],
              ),
            ),
            Text("This is my first app."),
            Text("The next value is: ${getNextInt()}"),
          ],
        ),
      ),
    );
  }
}

int getNextInt() => Random().nextInt(100);


