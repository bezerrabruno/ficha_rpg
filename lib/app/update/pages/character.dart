import 'package:flutter/material.dart';

class CharacterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Nome'),
      ),
      drawer: Drawer(),
    );
  }
}
