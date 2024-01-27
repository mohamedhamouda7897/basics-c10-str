import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Counter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          index++;
          setState(() {});
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
      body: Center(
          child: Text(
        "$index",
        style: const TextStyle(
          fontSize: 33,
        ),
      )),
    );
  }
}
