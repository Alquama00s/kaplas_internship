import 'package:flutter/material.dart';
import 'package:kaplas_internship/news_page/news.dart';
import 'package:kaplas_internship/onboarding/field.dart';

import 'third_party_links.dart';

class LogIn extends StatelessWidget {
  LogIn({Key? key}) : super(key: key);
  String? email, pass;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            'Log In',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Field(
            hintText: 'Email:',
            fun: (v) => email = v,
          ),
          Field(
            hintText: 'Password:',
            fun: (v) => pass = v,
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue[800]),
                )),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => News()));
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text(
                  'Log In',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
          Links(
            signUp: false,
          ),
        ],
      ),
    );
  }
}
