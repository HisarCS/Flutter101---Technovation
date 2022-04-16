import 'package:flutter/material.dart';
import 'package:flutter_second_week/home/home_page.dart';
import 'package:flutter_second_week/register/register_page.dart';
import 'package:flutter_toastr/flutter_toastr.dart';

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
    var size = MediaQuery.of(context).size;
    final double mainImageHeight = size.height * .3;

    return Scaffold(
      appBar: AppBar(
        title: Text("Giriş"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _mainTitle(),
              _mainImage(mainImageHeight),
              _userNumber(),
              _userPassword(),
              const SizedBox(height: 20),
              _loginButton(),
              _registerButton(),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _imageNetwork() {
  //   return Image.network('https://picsum.photos/seed/picsum/200/300');
  // }

  Widget _mainTitle() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Yemek Programına hoş geldin',
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _mainImage(double size) {
    return Image.asset(
      _foodImage,
      height: size,
    );
  }

  Widget _userNumber() {
    return TextField(
      controller: _usernameController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        // border: InputBorder.none,
        hintText: "Öğrenci maili",
        suffixIcon: Icon(Icons.email),
      ),
    );
  }

  Widget _userPassword() {
    return TextField(
      controller: _passwordController,
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        // border: InputBorder.none,
        hintText: "Parola",
        prefixIcon: Icon(Icons.vpn_key),
      ),
    );
  }

  Widget _loginButton() {
    return ElevatedButton(
      onPressed: () => _loginButtonFunction(),
      child: const Text(
        'Giriş yap',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void _loginButtonFunction() {
    // if (_username == _usernameController.text.trim() && _password == _passwordController.text.trim()) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
        (route) => false);
    // } else if (_username == _usernameController.text.trim() && _password != _passwordController.text.trim()) {
    //   _toastMessage("Parola yanlış");
    // } else {
    //   _toastMessage("Kullanıcı bulunamadı");
    // }
  }

  void _toastMessage(String text) {
    FlutterToastr.show(
      text,
      context,
      duration: FlutterToastr.lengthShort,
      position: FlutterToastr.bottom,
    );
  }

  Widget _registerButton() {
    return Row(
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

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterPage(),
              ),
            );
          },
        )
      ],
    );
  }
}

const _foodImage = 'assets/images/hamburger.png';
