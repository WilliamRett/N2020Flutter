import 'package:chatobot_ajuda/views/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Inicial"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _text1(),
          _text2(),
          _buttons(context),
          _text3(),
        ],
      ),
    );
  }
  
  _buttons(context) {
    return Container(
      margin: EdgeInsets.all(100),
      child: 
        _button(context),
    );
  }

  _button(BuildContext context) {
    return RaisedButton(
      color: Colors.green,
      child: Text(
        "Chatbot",
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
        onPressed: () => _onClickOk(context)
    );
  }

void _onClickOk(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return HomePage();
    }));
  }

  _text1() {
    return Text(
      "Bem-vindo!\n\n\n",
      style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,),
    );
  }

    _text2() {
    return Text(
      "Clique no botão para falar com o chatbot.",
      style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          ),
    );
  }

      _text3() {
    return Text(
      "\n\n\n Procure por ajuda profissional. Ligue 188.",
      style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
          ),
    );
  }
}