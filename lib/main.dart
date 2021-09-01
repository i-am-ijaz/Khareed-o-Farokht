import 'package:flutter/material.dart';
import 'package:khareedo_farokht/screens/splash%20screen/splash_screen.dart';
import 'package:khareedo_farokht/utils/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khareedo Farokht',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: SplashScreen(),
    );
  }
}
