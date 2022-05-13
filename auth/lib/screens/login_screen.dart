import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final user = {
    "first_name": "J",
    "last_name": "B",
    "email": "bjayanta.neo@gmail.com",
    "password": "123456",
  };

  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MaxSOP",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50.0,
              ),
              inputField(
                  hint: "example@something.com",
                  label: "Email address",
                  icon: Icons.mail,
                  isPassword: false,
                  ctrl: emailCtrl,
                  callback: (val) {
                    print('email $val');
                  }),
              SizedBox(
                height: 16.0,
              ),
              inputField(
                  hint: "********",
                  label: "Password",
                  icon: Icons.lock,
                  isPassword: true,
                  ctrl: passwordCtrl,
                  callback: (val) {
                    print('password $val');
                  }),
              SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width, 55),
                ),
                onPressed: () {
                  if (emailCtrl.text == user['email'] &&
                      passwordCtrl.text == user['password']) {
                    Navigator.of(context).pushNamed('/dashboard', arguments: user);
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Invalid login"),
                          content: Text("Invalid email address or, password."),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                // Navigator.of(context).pop();
                              },
                              child: Text("Cancel"),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget inputField(
          {required label,
          required hint,
          required icon,
          required isPassword,
          required ctrl,
          required callback}) =>
      TextField(
        controller: ctrl,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: "$label",
          hintText: "$hint",
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: Colors.blueAccent),
          ),
          prefixIcon: Icon(icon),
        ),
        onChanged: (ctrl) => callback(ctrl),
      );
}
