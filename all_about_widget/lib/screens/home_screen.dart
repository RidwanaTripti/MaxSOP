import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text(
            "50",
            style: TextStyle(
              fontSize: 56.00,
              fontWeight: FontWeight.bold,
            ),
          ),
          width: 300.00,
          height: 300.00,
          color: Colors.teal,
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(50, 20, 0, 0),
        ),
      ),
    );
  }
}
