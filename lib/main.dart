import 'package:flutter/material.dart';
import 'package:profile.dart/profile.dart';
import 'package:profile.dart/editProfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditProfile(),
    );
  }
}
