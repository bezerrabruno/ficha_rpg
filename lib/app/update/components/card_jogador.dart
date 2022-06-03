import 'package:flutter/material.dart';

import '../pages/character.dart';

class CardJogador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => CharacterPage()));
      },
      child: Card(
        margin: EdgeInsets.all(8.0),
        color: Colors.grey[350],
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(width: 3.0),
              borderRadius: BorderRadius.all(Radius.circular(48.0)),
            ),
            height: 50,
            width: 50,
          ),
          Text('Weshier', style: TextStyle(fontSize: 20)),
          Column(children: [
            Text('Elfo', style: TextStyle(fontSize: 20)),
            Text('Arqueiro', style: TextStyle(fontSize: 20)),
          ]),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.delete_outline,
                size: 30,
              )),
        ]),
      ),
    );
  }
}
