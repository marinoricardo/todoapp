// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5))
        .then((value) => Navigator.of(context).pushReplacementNamed('/home'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: SizedBox(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.done,
                size: 70,
              ),
            )),
      ),
    );
  }
}
