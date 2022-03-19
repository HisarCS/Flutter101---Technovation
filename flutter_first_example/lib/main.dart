import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 101'),
        centerTitle: true,
        //leading: Icon(Icons.star),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 350,
            width: 200,
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Merhaba",
                      style: TextStyle(fontSize: 24),
                    ),
                    const Text(
                      "Me",
                      style: TextStyle(fontSize: 24),
                    ),
                    const Text(
                      "Merhaba dünya",
                      style: TextStyle(fontSize: 24),
                    ),
                    const Text(
                      "Merhab",
                      style: TextStyle(fontSize: 24),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.red,
                          height: 15,
                          width: 25,
                        ),
                        Container(
                          color: Colors.white,
                          height: 5,
                          width: 25,
                        ),
                        Container(
                          color: Colors.purple,
                          height: 25,
                          width: 25,
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
