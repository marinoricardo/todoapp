// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre o Programador'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.whatsapp,
                size: 25,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    height: 90,
                    width: 90,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 80,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Marino Ricardo - Software Developer',
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          /*
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.height,
              color: Colors.amber,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Marino Ricardo',
                      style: TextStyle(
                        fontSize: 23.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Center(
                      child: Text(
                        'Pequeno entusiasta, autodidata com experiência em Desenvolvimento de Software usando as Tecnologias PHP, JavaScript e Java. Trabalhando na construção de Rest APIs, Integrações(Mpesa, Visa, PayPal, SMS Gateway) e consumir as APIs usando Vuejs para construção de aplicações modernas. ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          */
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                ListTile(
                  title: Text('E-mail'),
                  subtitle: Text('marinoricardo@gmail.com'),
                  leading: Icon(
                    Icons.email,
                    color: Colors.pink,
                    size: 30,
                  ),
                ),
                ListTile(
                  title: Text('Whatsapp'),
                  subtitle: Text('+258 84 522 2936'),
                  leading: Icon(
                    Icons.whatsapp,
                    color: Colors.pink,
                    size: 30,
                  ),
                ),
                ListTile(
                  title: Text('Telegram'),
                  subtitle: Text('+258 84 522 2936'),
                  leading: Icon(
                    Icons.telegram,
                    color: Colors.pink,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
