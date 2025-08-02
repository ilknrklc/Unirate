import 'package:flutter/material.dart';
import 'package:universitem/screen/loginScreen/login_screen.dart';

void main() {
  runApp(Unirate());
}

class Unirate extends StatelessWidget {
  const Unirate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unirate',
      theme: ThemeData(),
      home: LoginScreen(),
    );
  }
}
