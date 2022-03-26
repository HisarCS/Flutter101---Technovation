import 'package:examples/first_example/first_example_first_way.dart';
import 'package:examples/first_example/first_example_fourth_way.dart';
import 'package:examples/first_example/first_example_second_way.dart';
import 'package:examples/first_example/first_example_third_way.dart';
import 'package:examples/second_example/second_example_first_way.dart';
import 'package:examples/second_example/second_example_second_way.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const FirstScreenFirstWay(),
      //home: const FirstScreenSecondWay(),
      //home: const FirstScreenThirdWay(),
      //home: const FirstScreenFourthWay(),
      //home: const SecondScreenFirstWay(),
      home: const SecondScreenSecondWay(), // we can define which page we want to see from here
    );
  }
}
