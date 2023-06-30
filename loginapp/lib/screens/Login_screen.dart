// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:loginapp/screens/home_screen.dart';

TextStyle myStyle = TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    final usernameFeild = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "username",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordFeild = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        onPressed: () {
          if (username == "Akriti" && password == "pass1234") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen(username)));
          } else {
            print("login Failed");
          }
        },
        child: Text(
          'login',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.supervised_user_circle,
                        size: 100,
                      ),
                      SizedBox(height: 150),
                      usernameFeild,
                      SizedBox(height: 20),
                      passwordFeild,
                      SizedBox(height: 20),
                      myLoginButton
                    ]),
              ],
            )),
      )),
    );
  }
}
