import 'package:flutter/material.dart';

class StoreWidget extends StatelessWidget {
  final count;
  const StoreWidget({required this.count, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 50,
        color: Colors.redAccent,
        child: Text("Store $count"),
      ),
    );
  }
}
