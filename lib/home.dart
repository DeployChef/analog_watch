import 'package:analog_watch/analog_watch.dart';
import 'package:analog_watch/classic_watch.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
        child: Column(children: [
          ClassicWatch("Moscow"),
          SizedBox(height: 40,),
          AnalogWatch(),
          SizedBox()
        ],),
      ),
    );
  }
}
