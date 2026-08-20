import 'package:flutter/material.dart';
import 'package:strawberrypavlova/activity1/pavlova.dart';
import 'package:strawberrypavlova/activity2/columnAlignment.dart';
import 'package:strawberrypavlova/activity2/rowAlignment.dart';
import 'package:strawberrypavlova/activity3/login.dart';
import 'package:strawberrypavlova/activity2/padding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Activity 1: Pavlova
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strawberry Pavlova',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: ColumnAlignment(),
    );
  }

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
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Strawberry Pavlova',
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
  //       useMaterial3: true,
  //       fontFamily: 'Roboto',
  //     ),
  //     home: PaddingSample(),
  //   );
  // }

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
