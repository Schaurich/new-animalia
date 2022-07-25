// ignore_for_file: depend_on_referenced_packages

import 'package:new_animalia/models/animal_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  UserModel({
    this.animalsList,
    this.dataNascimento,
    this.email,
    this.end,
    this.nome,
    this.telefone,
  });
  String? nome;
  String? email;
  String? end;
  String? telefone;
  DateTime? dataNascimento;
  List<AnimalModel>? animalsList;
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
