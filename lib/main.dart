import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_animalia/animalia_app.dart';
import 'package:new_animalia/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => AuthService())],
    child: const AnimaliaApp(),
  ),);
}
