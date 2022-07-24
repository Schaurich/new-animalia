import 'package:flutter/material.dart';
import 'package:new_animalia/models/animal_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final List<AnimalModel> animalList = [
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
      nome: 'Dog2',
      image:
          'https://s2.glbimg.com/nvjFq8VRjyrpdQqaOeywz-5DFwY=/e.glbimg.com/og/ed/f/original/2021/08/27/captura_de_tela_2021-08-27_as_11.01.15.png',
      dataNascimento: DateTime.now().subtract(
        const Duration(
          days: 370,
        ),
      ),
    ),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animalia',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://super.abril.com.br/wp-content/uploads/2018/05/filhotes-de-cachorro-alcanc3a7am-o-c3a1pice-de-fofura-com-8-semanas1.png?quality=90&strip=info&resize=850,567'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Nome: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Dog1',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Idade: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '1 ano',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.animalList.length,
                      itemBuilder: (context, index) {
                        final animalModel = widget.animalList[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            right: 8,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(animalModel.image!),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
