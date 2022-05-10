import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(height: 100, color: Colors.yellow,),
            Flexible(child: Container(height: 100, color: Colors.red,)),
            Expanded(child: Container(color: Colors.teal,)),
          ],
        ),
      ),
    );
  }
}
