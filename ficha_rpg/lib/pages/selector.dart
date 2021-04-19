import 'package:ficha_rpg/components/card_jogador.dart';
import 'package:flutter/material.dart';

class SelectorPage extends StatefulWidget {
  String valor;
  List itens = [
    'Mestre',
    'Jogador',
  ];
  @override
  State<StatefulWidget> createState() {
    return SelectorPageState();
  }
}

class SelectorPageState extends State<SelectorPage> {
  @override
  Widget build(BuildContext context) {
    return _tela();
  }

  Widget _tela() {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Jogador'),
      ),
      floatingActionButton: creator(),
      body: ListView(
        children: [
          CardJogador(),
          CardJogador(),
          CardJogador(),
          CardJogador(),
        ],
      ),
    );
  }

  Widget creator() {
    return FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 36,
        ),
        backgroundColor: Colors.grey[350],
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: Text(
                    'Personagem',
                    style: TextStyle(fontSize: 36),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: DropdownButtonFormField(
                        hint: Text(
                          'Ficha',
                          style: TextStyle(fontSize: 24.0),
                        ),
                        items: widget.itens.map((valorItem) {
                          return DropdownMenuItem(
                            value: valorItem,
                            child: Text(
                              valorItem,
                              style: TextStyle(fontSize: 24),
                            ),
                          );
                        }).toList(),
                        value: widget.valor,
                        onChanged: (novoValor) {
                          setState(() {
                            widget.valor = novoValor;
                          });
                        },
                      ),
                    ),
                    TextFormField(),
                    RaisedButton(
                      onPressed: () => true,
                    )
                  ],
                );
              });
        });
  }
}
