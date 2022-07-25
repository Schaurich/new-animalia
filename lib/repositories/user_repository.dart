import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:new_animalia/database/db_firestore.dart';
import 'package:new_animalia/models/animal_model.dart';
import 'package:new_animalia/services/auth_service.dart';

class UserRepository extends ChangeNotifier {
  late FirebaseFirestore db;
  late AuthService auth;

  UserRepository({required this.auth}) {
    _startRepository();
  }

  _startRepository() async {
    await _startFireStore();
  }

  _startFireStore() {
    db = DBFirestore.get();
  }

  saveAnimal(AnimalModel animal) async {
    await db
        .collection('usuarios/${auth.usuario!.uid}/animalsList')
        .doc(animal.nome)
        .set(animal.toJson());
  }
}
