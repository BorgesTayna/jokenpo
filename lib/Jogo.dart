import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
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
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text("Escolha do APP",
                  textAlign: TextAlign.center
              ),
            ),
          ],
        ),
      )


    );
  }
}
