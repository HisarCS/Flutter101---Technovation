import 'package:flutter/material.dart';

class AddBookPage extends StatefulWidget {
  AddBookPage({Key? key}) : super(key: key);

  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitap Ekle"),
      ),
    );
  }
}
