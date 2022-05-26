import 'package:flutter/material.dart';
import 'package:form_validation/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                labelText: 'Email address',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                final isValidEmail = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z]+\.[a-zA-Z]+$")
                    .hasMatch(value!);

                if (value != null && !isValidEmail) {
                  return "Enter a valid email address.";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value != null && value.length < 8) {
                  return 'Enter minimum 8 characters.';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                    (route) => false,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Invalid input."),
                    ),
                  );
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
