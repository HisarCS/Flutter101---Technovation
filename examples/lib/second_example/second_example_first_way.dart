import 'package:flutter/material.dart';

class SecondScreenFirstWay extends StatelessWidget {
  const SecondScreenFirstWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Gezegeni'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                      'Hangi widget olmadan uygulama siyah ekrandır, ayrıca appBar ve body özelliklerine sahiptir?'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('A-) Center'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('B-) Scaffold'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('C-) Column'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('D-) MaterialApp'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
