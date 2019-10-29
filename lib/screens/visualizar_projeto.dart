import 'package:flutter/material.dart';
import 'package:prototipo_focus/screens/projeto.dart';

class VisualizarProjetoPage extends StatelessWidget {

  final String id;

  VisualizarProjetoPage({@required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          "Projeto $id",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.grey[800],
        elevation: 0,
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 600,
          width: 400,
          color: Colors.grey,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.grey[800],
                      ),
                      child: Center(child: Text("X", style: TextStyle(color: Colors.white, fontSize: 12),),)
                    ),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 10),
                  child: Text("DD/MM/AAAA",
                    style: TextStyle(fontSize: 20, color: Colors.grey[800]),),)
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Icon(Icons.radio_button_checked, color: Colors.grey[800],)
                  ),
                  Expanded(
                    child: Text("Reunião às 2PM com prioridade 3 para #reembolso @equipe de operações",
                    style: TextStyle(fontSize: 16),),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: FlatButton(
                      color: Colors.grey[800],
                      child: Text(
                        "Alterar Conteúdo",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 14,
                            letterSpacing: 0.5),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ProjetoPage(id: this.id,))
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
