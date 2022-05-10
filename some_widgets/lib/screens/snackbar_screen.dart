import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Amar dialog"),
          onPressed: () {
            final sb = SnackBar(content: Text("My message."),);
            ScaffoldMessenger.of(context).showSnackBar(sb);
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            primary: Colors.orange,
            minimumSize: Size(
                MediaQuery.of(context).size.width - 200,
                60
            ),
          ),
        ),
      ),
    );
  }
}
