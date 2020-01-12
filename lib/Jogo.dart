import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  
  var _imageApp = AssetImage("images/padrao.png");
  var _mensagem = "Escolha uma opção abaixo";

  void _escolhaUsuario(String opcaoUsuario){
    var opcoes = ["pedra","papel","tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    switch(escolhaApp){
      case"pedra":
        setState(() {
          this._imageApp = AssetImage("images/pedra.png");
        });
        break;
      case"papel":
        setState(() {
          this._imageApp = AssetImage("images/papel.png");
        });
        break;
      case"tesoura":
        setState(() {
          this._imageApp = AssetImage("images/tesoura.png");
        });
        break;

    }

    //validação ganhador
    //usuario ganhador
    if(
        (opcaoUsuario == "pedra" && escolhaApp == "tesoura") ||
        (opcaoUsuario == "papel" && escolhaApp == "pedra") ||
        (opcaoUsuario == "tesoura" && escolhaApp == "papel")
    ){
      setState(() {
        this._mensagem = "Parabens você ganhou! xD";
      });
    //app ganhador
    }else if(
        (opcaoUsuario == "pedra" && escolhaApp == "papel") ||
        (opcaoUsuario == "papel" && escolhaApp == "tesoura") ||
        (opcaoUsuario == "tesoura" && escolhaApp == "pedra")

    ) {
      setState(() {
        this._mensagem = "Você perdeu :(";
      });
    }else{
      setState(() {
        this._mensagem = "Empatamos! xD";
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("JokenPo Game",
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escolha do APP",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Image(image: this._imageApp,),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                this._mensagem,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _escolhaUsuario("pedra"),
                  child: Image.asset("images/pedra.png", height: 110),
                ),
                GestureDetector(
                  onTap: () => _escolhaUsuario("papel"),
                  child: Image.asset("images/papel.png", height: 110),
                ),
                GestureDetector(
                  onTap: () => _escolhaUsuario("tesoura"),
                  child: Image.asset("images/tesoura.png", height: 110),
                )
                /*
                Image.asset("images/pedra.png", height: 110),
                Image.asset("images/papel.png", height: 110),
                Image.asset("images/tesoura.png", height: 110)
                */
              ],
            )
         ],
        ),
      )


    );
  }
}