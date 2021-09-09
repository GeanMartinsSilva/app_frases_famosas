import 'dart:math';

import 'package:appfrases/app/utils/frases_list.dart';
import 'package:appfrases/app/widgets/texto_frase.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var fraseGerada = "Clique abaixo para gerar uma frase!";
  var autorSorteado = "";
  var ocupacaoAutor = "";
  var imagemAutor =
      "https://s4.static.brasilescola.uol.com.br/img/2019/09/panda.jpg";

  void _gerarFrase() {
    var sorteioAutor = Random().nextInt(autor.length);
    var autorSort = autor[sorteioAutor];
    var numeroSorteado = Random().nextInt(frases[autorSort]["textos"].length);

    setState(() {
      imagemAutor = frases[autorSort]["foto"];
      autorSorteado = frases[autorSort]["autor"];
      ocupacaoAutor = frases[autorSort]["ocupacao"];
      fraseGerada = frases[autorSort]["textos"][numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases Motivacionais'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(imagemAutor),
            SizedBox(height: 10),
            textFrase(fraseGerada, 25, FontWeight.normal, FontStyle.italic),
            SizedBox(height: 10),
            textFrase(autorSorteado, 25, FontWeight.w900, FontStyle.normal),
            SizedBox(height: 5),
            textFrase(ocupacaoAutor, 20, FontWeight.normal, FontStyle.italic),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: _gerarFrase,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
