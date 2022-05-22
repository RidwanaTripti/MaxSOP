import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final double coverImageHeight = 280;
  final double profileImageSize = 70;

  @override
  Widget build(BuildContext context) {
    final double top = coverImageHeight - profileImageSize;

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                child: buildCoverImage(),
                margin: EdgeInsets.only(bottom: profileImageSize),
              ),
              Positioned(
                top: top,
                child: buildProfileImage(),
              ),
            ],
          ),
          buildContant(),
        ],
      ),
    );
  }

  // custom widget
  Widget buildCoverImage() => Image.network(
        'https://images.unsplash.com/photo-1516259762381-22954d7d3ad2?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=889',
        width: double.infinity,
        height: coverImageHeight,
        fit: BoxFit.cover,
      );

  // custom widget
  Widget buildProfileImage() => CircleAvatar(
        radius: profileImageSize,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870"),
      );

  Widget buildContant() => Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Text(
            "YOUR NAME",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Text(
            "Your Job Description",
            style: TextStyle(color: Colors.grey),
          ),
          Divider(),
          buildSocialContent(),
        ],
      );

  Widget buildSocialContent() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          buildSocialButton(FontAwesomeIcons.facebook),
          buildSocialButton(FontAwesomeIcons.youtube),
          buildSocialButton(FontAwesomeIcons.linkedin),
          buildSocialButton(FontAwesomeIcons.instagram),
        ],
      );

  Widget buildSocialButton(icon) => Material(
    shape: CircleBorder(),
    child: CircleAvatar(
      child: InkWell(child: Icon(icon),onTap: () {}),
    ),
  );
}