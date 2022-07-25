import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_animalia/animalia_app.dart';
import 'package:new_animalia/repositories/user_repository.dart';
import 'package:new_animalia/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),
        ChangeNotifierProvider(
            create: (context) =>
                UserRepository(auth: context.read<AuthService>())),
      ],
      child: const AnimaliaApp(),
    ),
  );
}
