// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TaskForm extends StatelessWidget {
  const TaskForm({Key? key}) : super(key: key);

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
              decoration: InputDecoration(
                  labelText: 'Nome',
                  border: OutlineInputBorder(),
                  hintText: 'Nome da Tarefa'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Nome',
                  border: OutlineInputBorder(),
                  hintText: 'Nome da Tarefa'),
            ),
          ),
        ],
      ),
    );
  }
}
