import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kaplas_internship/onboarding/log_in.dart';
import 'package:kaplas_internship/onboarding/sign_up.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);
  final bool signUp = false;
  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      )),
                  child: widget.signUp ? SignUp() : LogIn(),
                ),
              )),
        ],
      ),
    );
  }
}
