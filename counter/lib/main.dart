import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Counter"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Count: $count",
                  style: TextStyle(fontSize: 32.0,),
                ),
                ElevatedButton(
                  child: Text("+ 1"),
                  onPressed: () {
                    setState(() {
                      count = count + 1;
                    });

                    print(count);
                  },
                ),
              ],
            ),
          ),
        ),
    );
  }
}