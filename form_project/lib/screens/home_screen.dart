import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController fullname = TextEditingController();
  String fname = '';

  // extra data
  final data = {
    "name": "JB",
    "phone": "+8801775219457"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: fullname,
                onChanged: (fullname) {
                  setState(() {
                    fname = fullname;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Text only',
                  labelText: 'Fullname',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  prefixIcon: Icon(Icons.edit),
                ),
              ),
              Text("${fname}"),
              SizedBox(height: 16.0,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Type here',
                  labelText: 'Phone number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              ElevatedButton(
                child: Text("Calculator"),
                onPressed: () {
                  Navigator.pushNamed(context, '/cal', arguments: data);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
