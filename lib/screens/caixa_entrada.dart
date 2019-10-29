import 'package:flutter/material.dart';
import 'package:prototipo_focus/screens/home.dart';
import 'package:prototipo_focus/screens/novo_projeto.dart';
import 'package:prototipo_focus/screens/projeto.dart';
import 'package:prototipo_focus/screens/visualizar_projeto.dart';

class CaixaEntradaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text("Caixa de Entrada",
          style: TextStyle(fontSize: 30, color: Colors.white),),
        backgroundColor: Colors.grey[800],
        elevation: 0,
        centerTitle: false,
        actions: <Widget>[
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(top: 20, right: 10),
              child: Text(
                "Sair", style: TextStyle(fontSize: 15),
              ),
            ),
            onTap: (){
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => NovoProjetoPage())
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[700],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey),
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    title: Text(
                      "Projeto ${index+1 < 10 ? "0"+(index+1).toString() : index+1}...",
                      style: TextStyle(color: Colors.grey[800], fontSize: 20),
                    ),
                    trailing:
                    Icon(Icons.keyboard_arrow_right, color: Colors.grey[800], size: 30.0)),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => VisualizarProjetoPage(id: index+1 < 10 ? "0"+(index+1).toString() : index+1))
              );
            },
          );
        },
      )
    );
  }

}
