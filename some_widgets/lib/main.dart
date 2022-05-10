import 'package:flutter/material.dart';
import 'screens/flexible_screen.dart';
import 'screens/expened_screen.dart';
import 'screens/dialog_screen.dart';
import 'screens/snackbar_screen.dart';
import 'screens/appbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Some Widgets",
      debugShowCheckedModeBanner: false,
      // home: AppBarScreen(),
      // home: SnackBarScreen(),
      // home: DialogScreen(),
      // home: ExpendedScreen(),
      home: FlexibleScreen(),
    );
  }
}
