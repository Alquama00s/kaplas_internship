import 'package:flutter/material.dart';
import 'package:kaplas_internship/onboarding/Image_button.dart';

class Links extends StatelessWidget {
  const Links({Key? key, this.signUp = true}) : super(key: key);
  final bool signUp;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 2,
                height: 50,
                color: Colors.blueGrey,
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text('or ${signUp ? 'Sign Up' : 'Log In'} with')),
            Expanded(
              child: Divider(
                thickness: 2,
                height: 50,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageButton(onPressed: () {}, assetImage: 'assets/g.png'),
            ImageButton(onPressed: () {}, assetImage: 'assets/f.png'),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          child: RichText(
            text: TextSpan(
              text: '${signUp ? 'H' : 'Dont h'}ave an account? ',
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                    text: signUp ? 'Log In' : 'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.amber)),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
