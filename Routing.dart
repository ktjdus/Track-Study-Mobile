import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/first',
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final FirstNumController = TextEditingController();
  final SecondNumController = TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey, title: Text('First Page'),),
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 50, left: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(controller: FirstNumController, decoration: InputDecoration(labelText: 'First Number'),),
              TextField(controller: SecondNumController, decoration: InputDecoration(labelText: 'Second Number'),),
              TextButton(child: Text('+', style: TextStyle(fontSize: 24),),
                onPressed: () {
                  int FirstNum = int.tryParse(FirstNumController.text) ?? 0;
                  int SecondNum = int.tryParse(SecondNumController.text) ?? 0;
                  
                  if ((1<=FirstNum) && (FirstNum<=100) && (1<=SecondNum) && (SecondNum<=100)) {
                    result = FirstNum + SecondNum;
                    Navigator.pushNamed(context, '/second', arguments: result);
                  }
                },
              ),
              TextButton(child: Text('-', style: TextStyle(fontSize: 24),),
                onPressed: () {
                  int FirstNum = int.tryParse(FirstNumController.text) ?? 0;
                  int SecondNum = int.tryParse(SecondNumController.text) ?? 0;
                  
                  if ((1<=FirstNum) && (FirstNum<=100) && (1<=SecondNum) && (SecondNum<=100)) {
                    result = FirstNum - SecondNum;
                    Navigator.pushNamed(context, '/second', arguments: result);
                  }
                },
              ),
            ],
          )
        )
      )
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey, title: Text('Second Page'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('The result is', style: TextStyle(fontSize: 24),),
              Text(data.toString(), style: TextStyle(fontSize: 32, color: Colors.red),),
              SizedBox(height: 100,),
              TextButton(
                onPressed: () {Navigator.pushNamed(context, '/first');}, 
                child: Text('Return', style: TextStyle(fontSize: 24),)
              )
            ],
          ),
        )
      )
    );
  }
}
