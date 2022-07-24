import 'package:flutter/material.dart';
import 'package:new_animalia/pages/auth_check_page.dart';

class AnimaliaApp extends StatelessWidget {
  const AnimaliaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animalia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AuthCheckPage(),
    );
  }
}
