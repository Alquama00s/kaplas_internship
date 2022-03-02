import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({Key? key, this.hintText = '', this.fun}) : super(key: key);
  final String hintText;
  final Function(String v)? fun;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: TextFormField(
          onChanged: (v) {
            if (fun != null) fun!(v);
          },
          cursorColor: Colors.white,
          cursorHeight: 28,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none),
        ));
  }
}
