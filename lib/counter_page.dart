import 'package:flutter/material.dart';

import 'count.dart';

class CounterPage extends StatefulWidget{
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage>{
  int count = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Widget Communication")),
      body: Center(
        child: Count(
          count: count,
          onCountSelected: () {
            print("Count was selected");
          },
          onCountChanged: (int val){
            setState(() => count+=val);
          },
        ),
      )
    );
  }
}