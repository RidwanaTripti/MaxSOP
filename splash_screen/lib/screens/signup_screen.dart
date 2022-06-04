import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/screens/second_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Color.fromARGB(255, 82, 37, 21)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90.0, left: 40.0),
              child: Container(
                child: Text(
                  "HELLO CBSTian !!!",
                  style: GoogleFonts.adamina(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Sign up Here  ',
              style: GoogleFonts.adamina(
                textStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            // ]),
            SizedBox(height: 50),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.brown,
                      Colors.transparent,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80),
                  ),
                ),
                child: signupField(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget signupField() => Padding(
      padding: const EdgeInsets.all(64.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: GlobalKey<FormState>(),
            child: TextFormField(
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                  labelText: 'User Name',
                  hintText: 'User Name',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                labelText: 'Email Address',
                hintText: 'Email Address',
                hintStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                border: OutlineInputBorder()),
          ),
          SizedBox(height: 30),
          TextFormField(
            decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                labelText: 'Password',
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                border: OutlineInputBorder()),
          ),
        ],
      ),
    );
