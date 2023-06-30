import 'package:flutter/material.dart';
import 'package:loginapp/screens/Login_screen.dart';

void main() => runApp(loginApp());

class loginApp extends StatelessWidget {
  const loginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login App",
      home: LoginScreen(),
    );
  }
}
