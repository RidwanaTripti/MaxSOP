import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    // get arguments value from route
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args["name"]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello ${args['name']}!", style: TextStyle(fontSize: 28),),
            Text("${args['phone']}!", style: TextStyle(fontSize: 20),),
            ElevatedButton(
              child: Text("Home"),
              onPressed: () {
                // Navigator.pushNamed(context, '/');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
