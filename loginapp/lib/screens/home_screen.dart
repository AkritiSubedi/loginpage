// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  HomeScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Column(children: [
        SizedBox(
          height: 25,
        ),
        Center(
          child: Text(
            "Welcome" + username,
            style: TextStyle(fontSize: 30),
          ),
        )
      ]),
    );
  }
}
