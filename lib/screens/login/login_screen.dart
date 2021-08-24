import 'package:flutter/material.dart';

class LoginInScreen extends StatelessWidget {
  const LoginInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Login'),
      ),
    );
  }
}
