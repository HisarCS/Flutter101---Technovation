import 'package:flutter/material.dart';

class FirstScreenSecondWay extends StatelessWidget {
  const FirstScreenSecondWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(), // body parameter returns a widget
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

// it is a Row returning function (1. Row)
  Widget _firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pink,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purple,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.cyan,
          ),
          height: 65,
          width: 65,
        )
      ],
    );
  }

// it is a Row returning function (2. Row)
  Widget _secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pinkAccent,
          ),
          height: 65,
          width: 65,
        )
      ],
    );
  }

// it is a Row returning function (3. Row)
  Widget _thirdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          height: 65,
          width: 65,
        )
      ],
    );
  }

// it is a Row returning function (4. Row)
  Widget _fourthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.greenAccent,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueGrey,
          ),
          height: 65,
          width: 65,
        )
      ],
    );
  }

// it is a Row returning function (5. Row)
  Widget _fifthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueAccent,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellowAccent,
          ),
          height: 65,
          width: 65,
        )
      ],
    );
  }

// it is a Row returning function (6. Row)
  Widget _sixthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          height: 65,
          width: 65,
        )
      ],
    );
  }

// it is a Row returning function (7. Row)
  Widget _seventhRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pink,
          ),
          height: 65,
          width: 65,
        )
      ],
    );
  }

// it is a Row returning function (8. Row)
  Widget _eighthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purple,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.cyan,
          ),
          height: 65,
          width: 65,
        )
      ],
    );
  }

// it is a Row returning function (9. Row)
  Widget _ninthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.cyan,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          height: 65,
          width: 65,
        )
      ],
    );
  }

// it is a Row returning function (10. Row)
  Widget _lastRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pink,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purple,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          height: 65,
          width: 65,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.cyan,
          ),
          height: 65,
          width: 65,
        )
      ],
    );
  }
}
