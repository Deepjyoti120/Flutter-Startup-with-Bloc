import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> stores = [
    'One Store',
    'Two Store',
    'Three Store',
    'Four Store',
  ];
  int currentSetStore = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            stores[currentSetStore],
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          MaterialButton(
            onPressed: () {
              postsUpdate();
            },
            child: Text("Next Store"),
            color: Colors.purple,
            textColor: Colors.white,
          ),
        ],
      )),
    );
  }

  void postsUpdate() {
    final random = Random();
    final index = random.nextInt(4);
    setState(() {
      currentSetStore = index;
    });
  }
}
