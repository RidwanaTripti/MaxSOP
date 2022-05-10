import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_builder/widgets/post_widget.dart';
import 'package:listview_builder/widgets/store_widget.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List data = [
    {"name": "JB", "home": "MYM", "count": 1},
    {"name": "Tipti", "home": "FUL", "count": 2},
    {"name": "SW", "home": "MUK", "count": 3},
    {"name": "Fahim", "home": "GOF", "count": 4},
    {"name": "Nahin", "home": "SHY", "count": 5},
    {"name": "Sourov", "home": "GOU", "count": 6},
  ];
  // data[index][key]
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return StoreWidget(count: data[index]["count"],);
                  },
                ),
              ),
              Expanded(
                flex: 4,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return PostWidget(name: data[index]["name"]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

