import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:new_animalia/pages/home_page.dart';
import 'package:new_animalia/pages/login_page.dart';
import 'package:new_animalia/services/auth_service.dart';
import 'package:provider/provider.dart';

class AuthCheckPage extends StatefulWidget {
  const AuthCheckPage({Key? key}) : super(key: key);

  @override
  State<AuthCheckPage> createState() => _AuthCheckPageState();
}

class _AuthCheckPageState extends State<AuthCheckPage> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.isLoading) {
      return loading();
    } else if (auth.usuario == null) {
      log('null');
      return const LoginPage();
    } else {
      log(auth.usuario.toString());
      return HomePage();
    }
  }

  loading() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
