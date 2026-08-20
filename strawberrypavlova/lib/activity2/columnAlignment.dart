import 'package:flutter/material.dart';

class ColumnAlignment extends StatelessWidget {
  const ColumnAlignment({super.key});

  final List<MainAxisAlignment> mainAlignments = const [
    MainAxisAlignment.center,
    MainAxisAlignment.spaceAround,
    MainAxisAlignment.spaceBetween,
    MainAxisAlignment.spaceEvenly,
    MainAxisAlignment.start,
    MainAxisAlignment.end,
  ];

  final List<CrossAxisAlignment> crossAlignments = const [
    CrossAxisAlignment.start,
    CrossAxisAlignment.end,
    CrossAxisAlignment.center,
    CrossAxisAlignment.stretch,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nerosa_Activity 2'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ...mainAlignments.map((alignment) => demoColumn(main: alignment)),
          ...crossAlignments.map((alignment) => demoColumn(cross: alignment)),
        ],
      ),
    );
  }

  Widget demoColumn({MainAxisAlignment? main, CrossAxisAlignment? cross}) {
    return Container(
      height: 700,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
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
