import 'package:flutter/material.dart';

class ExpendedScreen extends StatelessWidget {
  const ExpendedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 1,child: Container(height: 100, color: Colors.teal,)),
            Expanded(flex: 2,child: Container(height: 100, color: Colors.red,)),
            Container(height: 300, color: Colors.yellow,),
          ],
        ),
      ),
    );
  }
}
