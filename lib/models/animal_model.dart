// ignore_for_file: depend_on_referenced_packages

import 'package:new_animalia/helpers/datetime_helper.dart';
import 'package:json_annotation/json_annotation.dart';

part 'animal_model.g.dart';

@JsonSerializable()
class AnimalModel {
  factory AnimalModel.fromJson(Map<String, dynamic> json) =>
      _$AnimalModelFromJson(json);
  AnimalModel({
    this.nome,
    this.sexo,
    this.dataNascimento,
    this.porte,
    this.cor,
    this.personalidade,
    this.historia,
    this.image,
  });

  String? nome;
  String? sexo;
  DateTime? dataNascimento;
  String? porte;
  String? cor;
  String? personalidade;
  String? historia;
  String? image;
  String? get idade => DateHelper.getYearsAndMonthFromDate(dataNascimento!);
  Map<String, dynamic> toJson() => _$AnimalModelToJson(this);
}
