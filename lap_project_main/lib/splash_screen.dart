import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lap_project_main/main.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 60),
              width: 200,
              height: 200,
              child: Image.asset(
                'img/img1.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      Align(
        alignment: const Alignment(0, 0.7),
        child: Container(
          width: MediaQuery.of(context).size.width - 100,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
            },
            child: const Text('Get Started'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 19, 33, 224)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                )),
          ),
        ),
      )
    ]));
  }
}
