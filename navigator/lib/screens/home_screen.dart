import 'package:flutter/material.dart';
import 'package:navigator/screens/about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to about page"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AboutScreen(name: "JB", age: 100, mobile: "+8801775219457");
            }));
          },
        ),
      ),
    );
  }
}
