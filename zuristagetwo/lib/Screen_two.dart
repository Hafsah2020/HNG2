import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenTwo extends StatelessWidget {
  final List text;
  ScreenTwo({required this.text});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Image.asset('assets/HNG.png'),
              SizedBox(),
              Text(
                'I am ${text[0]}.\n I joined HNG/Zuri/i4g internship to improve my skills in ${text[2]}.\nI have goals to meet after ${text[1]} weeks. \nI like ${text[3]}.\n\n You can also join this program throgh the link below',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text: 'Open the link here',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launch('https://internship.zuri.team/');
                      }),
              ),        
            ]),
      ),
    );
  }
}
