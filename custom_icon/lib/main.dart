import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    child: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 64.0,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 200.0,
                    height: 200.0,
                    child: Center(
                      child: Text(
                        "JB",
                        style: TextStyle(
                          fontSize: 48.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.orange,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/bg.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 200.0,
                    height: 200.0,
                    child: Center(
                      child: Text(
                        "JB",
                        style: TextStyle(
                          fontSize: 48.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.orange,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/bg.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 200.0,
                    height: 200.0,
                    child: Center(
                      child: Text(
                        "JB",
                        style: TextStyle(
                          fontSize: 48.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.orange,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/bg.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 200.0,
                    height: 200.0,
                    child: Center(
                      child: Text(
                        "JB",
                        style: TextStyle(
                          fontSize: 48.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.orange,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/bg.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
