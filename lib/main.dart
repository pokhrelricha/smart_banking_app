import 'package:flutter/material.dart';
import 'package:smart_banking/pages/home_page.dart';

void main() {
  runApp(const SmartBankingApp());
}

class SmartBankingApp extends StatelessWidget {
  const SmartBankingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Banking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}
