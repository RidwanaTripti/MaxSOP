import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Icon test",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icon"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.beach_access, size: 64, color: Colors.orangeAccent,),
              // SizedBox(height: 16.0,),
              // IconButton(
              //     icon: Icon(Icons.account_balance,),
              //     iconSize: 96.0,
              //     splashColor: Colors.white,
              //     highlightColor: Colors.teal,
              //     onPressed: () {},
              // ),
              // ElevatedButton.icon(
              //     onPressed: () {},
              //     icon: Icon(Icons.dashboard, size: 56.0,),
              //     label: Text("Dashboard", style: TextStyle(fontSize: 36.0),),
              // ),
              GestureDetector(
                onTap: () {
                  print("Working!");
                },
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  child: Icon(
                    Icons.ac_unit,
                    size: 64.0,
                    color: Colors.orange,
                  ),
                  decoration: BoxDecoration(
                    // color: Colors.orangeAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    border: Border.all(color: Colors.orange, width: 5.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
