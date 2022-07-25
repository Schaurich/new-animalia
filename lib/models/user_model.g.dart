// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      animalsList: (json['animalsList'] as List<dynamic>?)
          ?.map((e) => AnimalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataNascimento: json['dataNascimento'] == null
          ? null
          : DateTime.parse(json['dataNascimento'] as String),
      email: json['email'] as String?,
      end: json['end'] as String?,
      nome: json['nome'] as String?,
      telefone: json['telefone'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'nome': instance.nome,
      'email': instance.email,
      'end': instance.end,
      'telefone': instance.telefone,
      'dataNascimento': instance.dataNascimento?.toIso8601String(),
      'animalsList': instance.animalsList,
    };
