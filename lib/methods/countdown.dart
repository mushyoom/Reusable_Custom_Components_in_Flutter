import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class CountDownPage extends StatefulWidget {
  const CountDownPage({Key? key}) : super(key: key);

  @override
  _CountDownPageState createState() => _CountDownPageState();
}

int endTime =
    DateTime.now().add(const Duration(days: 1)).millisecondsSinceEpoch;

void onEnd() {
  print('onEnd');
}

class _CountDownPageState extends State<CountDownPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CountdownTimer(
          endTime: endTime,
        ),
      ),
    );
  }
}
