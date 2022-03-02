import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kaplas_internship/onboarding/field.dart';
import 'package:kaplas_internship/onboarding/third_party_links.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            'Sign Up',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Field(
            hintText: 'Email:',
          ),
          Field(
            hintText: 'Password:',
          ),
          Field(
            hintText: 'Re-enter Password:',
          ),
          TextButton(
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
          Links(),
        ],
      ),
    );
  }
}
