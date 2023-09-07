
import 'package:amni/logIn_signup_Page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapps());
}

class Myapps extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Log In Page',
      theme: ThemeData(
        primaryColor: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LogInSignUpPage(),
    );
  }
}


