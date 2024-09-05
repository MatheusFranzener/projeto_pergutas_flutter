import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold é o esqueleto da aplicação
    // AppBar é o header
    // Body é o corpo da aplicação --> Center é utilizado para alinhar todo o body no centro
    // Child permite apenas um widget dentro
    // Children permite mais de um widget dentro
    // Column utilizado para criar uma "coluna" na aplicação
    // ElevatedButton é um botão, no qual possui o "onPressed" que capta o click e um child que pode contem qualquer widget

    // Lista que contém as perguntas da aplicação:
    final perguntas = ['Qual seu jogo favorito?', 'Qual seu principal hobby?'];

    void responderPergunta() {
      print("Pergunta respondida!");
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Game!'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // utilizado para não expandir verticalmente
            children: [
              Text(perguntas[0]),
              ElevatedButton(
                  onPressed: responderPergunta, child: Text("Payday 2")),
              ElevatedButton(
                  onPressed: responderPergunta, child: Text("Valorant")),
              ElevatedButton(
                  onPressed: responderPergunta, child: Text("League of Legends")),
            ],
          ),
        ),
      ),
    );
  }
}
