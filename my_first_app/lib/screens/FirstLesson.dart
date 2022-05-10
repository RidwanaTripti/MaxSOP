import 'package:flutter/material.dart';

class FirstLesson extends StatelessWidget {
  const FirstLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First app"),),
      body: Center(
        child: Text(
          "My First App",
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
