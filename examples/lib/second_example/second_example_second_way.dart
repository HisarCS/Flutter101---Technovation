import 'package:flutter/material.dart';

class SecondScreenSecondWay extends StatelessWidget {
  const SecondScreenSecondWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Gezegeni'),
        centerTitle: true,
      ),
      body: _body(), // body parameter return a widget
    );
  }

// it's a Widget function for Scaffold body parameter
  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _questionWidget(),
          _answerWidget(_answerA),
          _answerWidget(_answerB),
          _answerWidget(_answerC),
          _answerWidget(_answerD),
        ],
      ),
    );
  }

  Widget _questionWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(),
        ),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(_questionText),
        ),
      ),
    );
  }

// they all use the same Container. if only the text is changing, we can define it with a single function
  Widget _answerWidget(String answer) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(answer),
        ),
      ),
    );
  }
}

// we can define our text values here, for easier access later
const String _questionText =
    'Hangi widget olmadan uygulama siyah ekrandır, ayrıca appBar ve body özelliklerine sahiptir?';
const String _answerA = 'A-) Center';
const String _answerB = 'B-) Scaffold';
const String _answerC = 'C-) Column';
const String _answerD = 'D-) MaterialApp';
