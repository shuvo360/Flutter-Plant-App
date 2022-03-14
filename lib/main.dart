import 'package:flutter/material.dart';
import 'package:plantapp/page/splash_page.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "plantapp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'gilroy'
      ),
      home: const SafeArea(
        child: SplashPage(),
        ),
    );
  }
}
