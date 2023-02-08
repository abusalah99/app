import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/SignupScreen.dart';
import 'package:flutter/cupertino.dart';

import 'Sign_in.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Signin(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 115, 100, 215),
      child: Center(
        child: Text(
          "Welcom !",
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),

      // FlutterLogo(size: MediaQuery.of(context).size.height)
    );
  }
}
