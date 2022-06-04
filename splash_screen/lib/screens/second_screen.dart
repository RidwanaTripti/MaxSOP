import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen/screens/signup_screen.dart';

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
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.brown[400],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(''))),
              accountName: Container(),
              accountEmail: Container(),
            )
            //decoration: BoxDecoration(

            //   color: Colors.brown[400],
            //   shape: BoxShape.circle,
            //   image: DecorationImage(
            //     fit: BoxFit.fill,
            //     image: AssetImage('assets/cbst-2.jpg'),
            //   ),
            // ),
            // child: Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Text(
            //     'College Of Business Science and Technology,Mymensingh (CBST)',
            //     style: GoogleFonts.adamina(
            //       textStyle: TextStyle(
            //         color: Colors.black,
            //       ),
            //     ),
            //   ),
            // ),
            //)
          ],
        ),
      ),
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
              padding: const EdgeInsets.only(top: 80.0),
              child: Text(
                'Sign in Here CBSTian !!',
                style: GoogleFonts.adamina(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Don\'t Have Account ?? ',
                style: GoogleFonts.adamina(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SignupScreen();
                    }),
                  );
                },
                child: Text(
                  'Sign up',
                  style: GoogleFonts.adamina(
                      textStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              )
            ]),
            SizedBox(height: 50),
            inputExpanded()
          ],
        ),
      ),
    );
  }
}

Widget signinField() => Padding(
      padding: const EdgeInsets.all(64.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: GlobalKey<FormState>(),
            child: TextFormField(
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                  labelText: 'Email',
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                labelText: 'Password',
                hintText: '',
                hintStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                border: OutlineInputBorder()),
          ),
        ],
      ),
    );

Widget inputExpanded() => Expanded(
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
          child: signinField()),
    );
