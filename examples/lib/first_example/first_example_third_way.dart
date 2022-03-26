import 'package:flutter/material.dart';

class FirstScreenThirdWay extends StatelessWidget {
  const FirstScreenThirdWay({Key? key}) : super(key: key);

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
          _firstRow(),
          const SizedBox(
            height: 10,
          ),
          _secondRow(),
          const SizedBox(
            height: 10,
          ),
          _thirdRow(),
          const SizedBox(
            height: 10,
          ),
          _fourthRow(),
          const SizedBox(
            height: 10,
          ),
          _fifthRow(),
          const SizedBox(
            height: 10,
          ),
          _sixthRow(),
          const SizedBox(
            height: 10,
          ),
          _seventhRow(),
          const SizedBox(
            height: 10,
          ),
          _eighthRow(),
          const SizedBox(
            height: 10,
          ),
          _ninthRow(),
          const SizedBox(
            height: 10,
          ),
          _lastRow(),
        ],
      ),
    );
  }

// it is a Row returning function
  Widget _firstRow() {
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
  Widget _secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _container(Colors.yellow),
        _container(Colors.pinkAccent),
      ],
    );
  }

// it is a Row returning function
  Widget _thirdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _container(Colors.red),
        _container(Colors.black),
      ],
    );
  }

// it is a Row returning function
  Widget _fourthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _container(Colors.greenAccent),
        _container(Colors.blueGrey),
      ],
    );
  }

// it is a Row returning function
  Widget _fifthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _container(Colors.blueAccent),
        _container(Colors.yellowAccent),
      ],
    );
  }

// it is a Row returning function
  Widget _sixthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _container(Colors.orange),
        _container(Colors.red),
      ],
    );
  }

// it is a Row returning function
  Widget _seventhRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _container(Colors.green),
        _container(Colors.pink),
      ],
    );
  }

// it is a Row returning function
  Widget _eighthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _container(Colors.purple),
        _container(Colors.cyan),
      ],
    );
  }

// it is a Row returning function
  Widget _ninthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _container(Colors.cyan),
        _container(Colors.green),
      ],
    );
  }

// it is a Row returning function
  Widget _lastRow() {
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

// it is a Container returning function
// they all use the same container. if only the color is changing, we can define it with a single function
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
