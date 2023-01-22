// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({Key? key}) : super(key: key);

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  TextEditingController _nomeTarefa = TextEditingController();
  TextEditingController _descricaoTarefa = TextEditingController();

  final List<Tarefa> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Tarefa'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.save,
                size: 25,
              ))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _nomeTarefa,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
                hintText: 'Nome da Tarefa',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: _descricaoTarefa,
              decoration: InputDecoration(
                labelText: 'Descrição',
                border: OutlineInputBorder(),
                hintText: 'Descrição da Tarefa',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
