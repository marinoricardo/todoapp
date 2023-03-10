import 'package:flutter/material.dart';
import 'package:todoapp/about.dart';
import 'package:todoapp/home.dart';
import 'package:todoapp/splash.dart';
import 'package:todoapp/task_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarefas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // home: const Home(),
      initialRoute: '/splash',
      routes: {
        '/home': ((context) => const Home()),
        '/addtask': ((context) => const TaskForm()),
        '/splash': ((context) => const Splash()),
        '/about': ((context) => const About()),
      },
    );
  }
}
