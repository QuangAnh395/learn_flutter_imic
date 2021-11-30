import 'package:flutter/material.dart';
import 'package:learn_flutter_imic/screen/bai_tap_buoi_1_screen.dart';
import 'package:learn_flutter_imic/screen/login/login_screen/login_screen.dart';
import 'package:learn_flutter_imic/screen/sign_up/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.purple,
      ),
      home: LoginScreen(),
    );
  }
}
