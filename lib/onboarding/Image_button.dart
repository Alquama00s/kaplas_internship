import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton(
      {Key? key, required this.onPressed, required this.assetImage})
      : super(key: key);
  final void Function() onPressed;
  final String assetImage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed.call();
      },
      child: Container(
        margin: EdgeInsets.all(5),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(assetImage),
          ),
        ),
      ),
    );
  }
}
