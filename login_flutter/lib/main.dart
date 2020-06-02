import 'package:flutter/material.dart';
import 'package:login_flutter/screens/home/home_screen.dart';

import 'screens/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations Login',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
