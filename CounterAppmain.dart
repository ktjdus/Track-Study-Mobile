import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  void CountUp() {
    setState(() {counter++;});
  }

  void CountDown() {
    setState(() {
      if (counter > 0) {counter--;}
      }
    );
  }

  void ResetCount() {
    setState(() {counter = 0;});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('$counter', style: TextStyle(fontSize: 24),),
            TextButton(onPressed: CountUp, child: Text('Increase')),
            TextButton(onPressed: CountDown, child: Text('Decrease')),
            TextButton(onPressed: ResetCount, child: Text('Reset')),
          ],),)
      )
    );
  }
}
