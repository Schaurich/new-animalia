import 'package:new_animalia/models/animal_model.dart';

class HomeServices {}

List<AnimalModel> getHome() {
  final response = [
    AnimalModel(
      nome: 'Dog1',
      image:
          'https://super.abril.com.br/wp-content/uploads/2018/05/filhotes-de-cachorro-alcanc3a7am-o-c3a1pice-de-fofura-com-8-semanas1.png?quality=90&strip=info&resize=850,567',
      dataNascimento: DateTime.now().subtract(
        const Duration(
          days: 1470,
        ),
      ),
    ),
    AnimalModel(
      nome: 'Dog2',
      image:
          'https://s2.glbimg.com/nvjFq8VRjyrpdQqaOeywz-5DFwY=/e.glbimg.com/og/ed/f/original/2021/08/27/captura_de_tela_2021-08-27_as_11.01.15.png',
      dataNascimento: DateTime.now().subtract(
        const Duration(
          days: 370,
        ),
      ),
    ),
    AnimalModel(
      nome: 'Dog3',
      image:
          'https://conteudo.imguol.com.br/c/entretenimento/54/2020/04/28/cachorro-pug-1588098472110_v2_900x506.jpg.webp',
      dataNascimento: DateTime.now().subtract(
        const Duration(
          days: 770,
        ),
      ),
    ),
  ];
  return response;
}
