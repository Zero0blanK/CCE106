import 'package:flutter/material.dart';
import 'package:activity/activity1/pavlova.dart';
import 'package:activity/activity2/columnAlignment.dart';
import 'package:activity/activity2/rowAlignment.dart';
import 'package:activity/activity3/login.dart';
import 'package:activity/activity2/padding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Activity 1: Pavlova
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Strawberry Pavlova',
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
  //       useMaterial3: true,
  //       fontFamily: 'Roboto',
  //     ),
  //     home: Pavlova(),
  //   );
  // }
  // Activity 2: ColumnAlignment
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Strawberry Pavlova',
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
  //       useMaterial3: true,
  //       fontFamily: 'Roboto',
  //     ),
  //     home: ColumnAlignment(),
  //   );
  // }

  // Activity 2: RowAlignment
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Strawberry Pavlova',
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
  //       useMaterial3: true,
  //       fontFamily: 'Roboto',
  //     ),
  //     home: RowAlignment(),
  //   );
  // }

  // Activity 2: Padding
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strawberry Pavlova',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: PaddingSample(),
    );
  }

  // Activity 3: Login
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Strawberry Pavlova',
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
  //       useMaterial3: true,
  //       fontFamily: 'Roboto',
  //     ),
  //     home: LoginPage(),
  //   );
  // }
}
