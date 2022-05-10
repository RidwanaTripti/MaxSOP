import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
      ),
      body: Column(
        children: [
          // Image(image: AssetImage("assets/energizer.png",), height: 450.00,),
          // Image(
          //   image: NetworkImage(
          //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwZ_1jQnKaWO9oOVLD5T2ylZ-0FgRbVj1RFA&usqp=CAU"),
          //   // width: double.infinity,
          //   // width: MediaQuery.of(context).size.width,
          //   height: 500.00,
          //   fit: BoxFit.cover,
          // ),
          // Image.asset("assets/energizer.png"),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwZ_1jQnKaWO9oOVLD5T2ylZ-0FgRbVj1RFA&usqp=CAU",
            width: 350.00,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
