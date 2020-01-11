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
        title: Text("JokenPo"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Text("Escolha do APP",
                textAlign: TextAlign.center
            )
          ],
        ),
      )


    );
  }
}
