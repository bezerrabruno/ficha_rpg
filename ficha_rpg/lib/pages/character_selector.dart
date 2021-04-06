import 'package:flutter/material.dart';

import 'package:ficha_rpg/pages/character.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Personagens'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => CharacterPage()));
        },
      ),
      body: ListView(
        children: [
          _cardPersonagem(),
          _cardPersonagem(),
          _cardPersonagem(),
          _cardPersonagem(),
        ],
      ),
    );
  }

  Widget _cardPersonagem() {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: Colors.blueGrey,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(width: 3.0),
            borderRadius: BorderRadius.all(Radius.circular(48.0)),
          ),
          height: 50,
          width: 50,
        ),
        Column(children: [
          Text('Nome', style: TextStyle(fontSize: 20)),
          Text('Nome', style: TextStyle(fontSize: 20)),
        ]),
        Column(children: [
          Text('Raça', style: TextStyle(fontSize: 20)),
          Text('Classe', style: TextStyle(fontSize: 20)),
        ]),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.delete_outline,
              size: 30,
            )),
      ]),
    );
  }
}
