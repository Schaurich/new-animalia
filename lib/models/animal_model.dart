class AnimalModel {
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
  String? get idade => dataNascimento != null
      ? dataNascimento!.difference(DateTime.now()).toString()
      : null;
}
