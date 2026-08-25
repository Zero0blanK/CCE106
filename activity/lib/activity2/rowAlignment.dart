import 'package:flutter/material.dart';

class RowAlignment extends StatelessWidget {
  const RowAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    final mainAlignments = [
      MainAxisAlignment.center,
      MainAxisAlignment.spaceAround,
      MainAxisAlignment.spaceBetween,
      MainAxisAlignment.spaceEvenly,
      MainAxisAlignment.start,
      MainAxisAlignment.end,
    ];

    final crossAlignments = [
      CrossAxisAlignment.start,
      CrossAxisAlignment.end,
      CrossAxisAlignment.center,
      CrossAxisAlignment.stretch,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nerosa_Activity 2'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ...mainAlignments.map((alignment) => demoRow(main: alignment)),
          ...crossAlignments.map((alignment) => demoRow(cross: alignment)),
        ],
      ),
    );
  }

  Widget demoRow({MainAxisAlignment? main, CrossAxisAlignment? cross}) {
    return Container(
      height: 750,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        mainAxisAlignment: main ?? MainAxisAlignment.start,
        crossAxisAlignment: cross ?? CrossAxisAlignment.center,
        children: [
          Container(width: 100, height: 100, color: Colors.red),
          Container(width: 90, height: 90, color: Colors.yellow),
          Container(width: 80, height: 80, color: Colors.blue),
        ],
      ),
    );
  }
}
