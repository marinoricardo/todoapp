// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(),
        title: Text('Tarefas'),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
    );
  }
}
