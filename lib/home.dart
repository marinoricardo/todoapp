// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final List<String> tarefas = <String>['A', 'B'];
  bool done = false;

  final List<Tarefa> tarefas = [
    Tarefa(
        nome: "PHP",
        descricao: "Aprender a desenvolver aplicativos web usando PHP",
        done: false),
    Tarefa(
      nome: "Laravel",
      descricao: "Aprender a construir Rest API's",
      done: true,
    ),
    Tarefa(
        nome: "Flutter",
        descricao: "Aprender a desenvolver aplicativos moveis",
        done: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(),
        title: Text('Tarefas'),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 25),
        child: ListView.separated(
          itemCount: tarefas.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tarefas[index].nome),
              subtitle: Text(tarefas[index].descricao),
              trailing: Checkbox(
                  value: tarefas[index].done,
                  onChanged: (value) {
                    setState(() {
                      tarefas[index].done = value!;
                    });
                  }),
            );
          },
          separatorBuilder: ((context, index) => const Divider()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/addtask');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Tarefa {
  String nome;
  String descricao;
  bool? done;

  Tarefa({required this.nome, required this.descricao, this.done});
}
