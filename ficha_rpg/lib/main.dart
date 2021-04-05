import 'package:flutter/material.dart';

void main() {
  runApp(AppRPG());
}

class AppRPG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ficha RPG',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Iniciando'),
      ),
    );
  }
}
