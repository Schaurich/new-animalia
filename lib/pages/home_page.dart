// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:new_animalia/models/animal_model.dart';
import 'package:new_animalia/repositories/user_repository.dart';
import 'package:new_animalia/services/auth_service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.userRepository}) : super(key: key);

  UserRepository userRepository;

  final List<AnimalModel> animalList = [
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
  late AnimalModel? animalModel = animalList[0];
  List<AnimalModel>? get animalsList =>
      animalList.where((element) => element != animalModel).toList();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () =>
              widget.userRepository.saveAnimal(widget.animalModel!)),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: InkWell(
                onTap: () => auth.logout(),
                child: const Icon(Icons.exit_to_app_rounded)),
          ),
        ],
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.amber,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              NetworkImage(widget.animalModel?.image ?? ''),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    const Text(
                                      'Nome: ',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      widget.animalModel?.nome ?? '',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Idade: ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    widget.animalModel?.idade ?? '',
                                    style: const TextStyle(
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
                      height: 70,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.animalsList!.length,
                        itemBuilder: (context, index) {
                          final animalModel = widget.animalsList![index];
                          return Padding(
                            padding: const EdgeInsets.only(
                              right: 8,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  widget.animalModel = animalModel;
                                });
                              },
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    NetworkImage(animalModel.image!),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
