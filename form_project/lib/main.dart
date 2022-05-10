import 'package:flutter/material.dart';
import 'screens/calculator_screen.dart';
import 'screens/home_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Form Test",
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/cal': (context) => CalculatorScreen(),
      },
    );
  }
}
