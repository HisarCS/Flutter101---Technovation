import 'package:flutter/material.dart';

class FirstScreenFourthWay extends StatelessWidget {
  const FirstScreenFourthWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(), // body parameter return a widget
    );
  }

// it's a Widget function for Scaffold body parameter
  Widget _body() {
    return SafeArea(
      child: Column(
        children: [
          _firstAndLastRow(),
          const SizedBox(
            height: 10,
          ),
          _midRows(Colors.yellow, Colors.pinkAccent),
          const SizedBox(
            height: 10,
          ),
          _midRows(Colors.red, Colors.black),
          const SizedBox(
            height: 10,
          ),
          _midRows(Colors.greenAccent, Colors.blueGrey),
          const SizedBox(
            height: 10,
          ),
          _midRows(Colors.blueAccent, Colors.yellowAccent),
          const SizedBox(
            height: 10,
          ),
          _midRows(Colors.orange, Colors.red),
          const SizedBox(
            height: 10,
          ),
          _midRows(Colors.green, Colors.pink),
          const SizedBox(
            height: 10,
          ),
          _midRows(Colors.purple, Colors.cyan),
          const SizedBox(
            height: 10,
          ),
          _midRows(Colors.cyan, Colors.green),
          const SizedBox(
            height: 10,
          ),
          _firstAndLastRow(),
        ],
      ),
    );
  }

// it is a Row returning function
  Widget _firstAndLastRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _container(Colors.pink),
        _container(Colors.purple),
        _container(Colors.blue),
        _container(Colors.green),
        _container(Colors.cyan),
      ],
    );
  }

// it is a Row returning function
// they all use the same Row. if only the color is changing, we can define it with a single function
  Widget _midRows(Color firstColor, Color lastColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _container(firstColor),
        _container(lastColor),
      ],
    );
  }

// it is a Container returning function
// they all use the same Container. if only the color is changing, we can define it with a single function
  Widget _container(Color color) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      height: 65,
      width: 65,
    );
  }
}
