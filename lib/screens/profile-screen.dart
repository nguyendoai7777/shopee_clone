import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }

  AppBar buildAppBar() => AppBar(
    leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
    title: Text('Your Profile'),
    actions: [],
  );
}