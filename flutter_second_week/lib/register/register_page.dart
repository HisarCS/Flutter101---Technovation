import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordVerifyController = TextEditingController();

  bool isTrue = true;

  String dropdownValue = "ankara";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double mainImageHeight = size.height * .3;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kayıt ol"),
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
              _userPasswordVerify(),
              _checkBox(),
              _dropdownMenu(),
              const SizedBox(height: 20),
              _registerButton(),
            ],
          ),
        ),
      ),
    );
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
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        // border: InputBorder.none,
        hintText: "Parola",
        prefixIcon: Icon(Icons.vpn_key),
      ),
    );
  }

  Widget _userPasswordVerify() {
    return TextField(
      controller: _passwordVerifyController,
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        // border: InputBorder.none,
        hintText: "Parola Tekrar",
        prefixIcon: Icon(Icons.vpn_key),
      ),
    );
  }

  Widget _registerButton() {
    return ElevatedButton(
      onPressed: () => _registerButtonFunction(),
      child: const Text(
        'Kayıt ol',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void _registerButtonFunction() {}

  Widget _checkBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Bildirimler açık olsun mu?"),
        Checkbox(
            value: isTrue,
            onChanged: (value) {
              setState(() {
                if (isTrue) {
                  isTrue = false;
                } else {
                  isTrue = true;
                }
              });
            }),
      ],
    );
  }

  Widget _dropdownMenu() {
    return DropdownButton(
      value: dropdownValue,
      isExpanded: true,
      items: const [
        DropdownMenuItem(
          child: Text("Ankara"),
          value: "ankara",
        ),
        DropdownMenuItem(child: Text("İstanbul"), value: "istanbul"),
        DropdownMenuItem(
          child: Text("İzmir"),
          value: "imir",
        ),
        DropdownMenuItem(
          child: Text("Antalya"),
          value: "antalya",
        ),
      ],
      onChanged: (value) {
        setState(() {
          dropdownValue = value.toString();
        });
      },
    );
  }
}

const _foodImage = 'assets/images/hamburger.png';
