import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final String name;
  final int age;
  final String mobile;

  const AboutScreen({Key? key, required this.name, required this.age, required this.mobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Go back"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Text("My name is: $name"),
            Text("I am $age years old."),
            Text("And my mobile number is $name."),
          ],
        ),
      ),
    );
  }
}
