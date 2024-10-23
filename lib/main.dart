import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:medical_cabinet/presentation/auth/pages/login.dart';
import 'package:medical_cabinet/service_locator.dart';
import 'package:medical_cabinet/theme/theme.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      home: const LoginPage(),
    );
  }
}

void newfunc() async {
  var url = Uri.parse("http://192.168.1.100:5000/users/login");
  // var url = Uri.https("localhost:7086', 'users/login");
  final response = await http.post(url,
      body: convert.json.encode({'userName': 'string', 'password': 'string'}),
      headers: {'content-type': 'application/json'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}
