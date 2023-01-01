import 'package:ecommerce_app/view/home_view.dart';
import 'package:ecommerce_app/view/main_view.dart';
import 'package:ecommerce_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ViewMain(),
    );
  }
}
