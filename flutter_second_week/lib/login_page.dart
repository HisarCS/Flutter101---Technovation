import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final String _username = "hello@gmail.com";
  final String _password = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print('float action button');
      //   },
      //   child: Icon(Icons.add),
      // ),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _mainTitle(),
              Image.asset(
                _foodImage,
                width: 200,
                height: 200,
              ),
              TextField(
                controller: _usernameController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print('Giriş yap butonu');
                  print(_usernameController.text);
                  print(_passwordController.text);
                },
                child: const Text(
                  'Giriş yap',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Henüz üye değil misin? '),
                  InkWell(
                    child: const Text(
                      'Hemen kayıt ol!',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    onTap: () {
                      print('kayıt ol butonu');
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageNetwork() {
    return Image.network('https://picsum.photos/seed/picsum/200/300');
  }

  Widget _mainTitle() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Yemek Programına hoş geldin',
        textAlign: TextAlign.center,
      ),
    );
  }
}

const _foodImage = 'assets/images/hamburger.png';
