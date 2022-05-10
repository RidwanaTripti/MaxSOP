import 'package:flutter/material.dart';
import 'screens/FirstLesson.dart';
import 'screens/Dashboard.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: FirstLesson(),
      home: Dashboard(),
    );
  }
}
