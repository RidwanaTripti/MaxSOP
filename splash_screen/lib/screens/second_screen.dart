import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen/screens/first_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, //for hiding appber//
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "About",
          style: GoogleFonts.adamina(
            textStyle: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            color: Colors.black,
            splashColor: Colors.indigo,
            onPressed: () {},
            icon: Icon(
              Icons.menu,
            )),
      ),
      body: Stack(fit: StackFit.expand, children: [createGradient()]),
    );
  }
}
