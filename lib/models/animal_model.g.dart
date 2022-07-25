// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalModel _$AnimalModelFromJson(Map<String, dynamic> json) => AnimalModel(
      nome: json['nome'] as String?,
      sexo: json['sexo'] as String?,
      dataNascimento: json['dataNascimento'] == null
          ? null
          : DateTime.parse(json['dataNascimento'] as String),
      porte: json['porte'] as String?,
      cor: json['cor'] as String?,
      personalidade: json['personalidade'] as String?,
      historia: json['historia'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$AnimalModelToJson(AnimalModel instance) =>
    <String, dynamic>{
      'nome': instance.nome,
      'sexo': instance.sexo,
      'dataNascimento': instance.dataNascimento?.toIso8601String(),
      'porte': instance.porte,
      'cor': instance.cor,
      'personalidade': instance.personalidade,
      'historia': instance.historia,
      'image': instance.image,
    };
