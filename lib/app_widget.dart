import 'package:flutter/material.dart';
import 'package:tdd_flutter/app/pages/registrer_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter TDD",
      theme: ThemeData(primaryColor: Colors.teal),
      home: const RegisterPage(),
    );
  }
}
