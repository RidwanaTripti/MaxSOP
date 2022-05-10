import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog box"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show dialog"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Colors.teal,
                title: Text("Amar dialog box"),
                content: Text("Tumi raji kina?"),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: Text("No", style: TextStyle(color: Colors.white),),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Yes", style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              barrierDismissible: false,
            );
          },
        ),
      ),
    );
  }
}
