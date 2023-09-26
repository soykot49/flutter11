import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_page/log.dart';

class SpScreen extends StatefulWidget {
  const SpScreen({super.key});

  @override
  State<SpScreen> createState() => _SpScreenState();
}

class _SpScreenState extends State<SpScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LogIn(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(28, 108, 246, 1),
        child: Center(
            child: Text(
          "Fabrico",
          style: TextStyle(
              fontSize: 34, fontWeight: FontWeight.w700, color: Colors.white),
        )),
      ),
    );
  }
}
