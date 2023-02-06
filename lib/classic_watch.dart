import 'dart:async';

import 'package:flutter/material.dart';

class ClassicWatch extends StatelessWidget {
  String timezone;

  ClassicWatch(this.timezone, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$timezone | RUS",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeText(timezone),
        ],
      ),
    );
  }
}

class TimeText extends StatefulWidget {
  String timezone;
  TimeText(this.timezone, {Key? key}) : super(key: key);

  @override
  State<TimeText> createState() => _TimeTextState(timezone);
}

class _TimeTextState extends State<TimeText> {
  String timezone;
  DateTime _timeOfDay = DateTime.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _timeOfDay = DateTime.now();
      });
    });
  }

  _TimeTextState(this.timezone);

  @override
  Widget build(BuildContext context) {
    var minuteText = _timeOfDay.minute > 9 ? _timeOfDay.minute : "0${_timeOfDay.minute}";

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${_timeOfDay.hour}:$minuteText",
          style: Theme.of(context).textTheme.headline1,
        ),
        // SizedBox(
        //   width: 5,
        // ),
        // RotatedBox(
        //   quarterTurns: 3,
        //   child: Text(
        //     "${_timeOfDay.second}",
        //     style: Theme.of(context).textTheme.bodyText1,
        //   ),
        // ),
      ],
    );
  }
}
