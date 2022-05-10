import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final name;
  const PostWidget({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.greenAccent,
        child: Align(child: Text("$name")),
      ),
    );
  }
}
