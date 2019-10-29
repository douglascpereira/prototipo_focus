import 'package:flutter/material.dart';

class NovoProjetoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          "Novo Projeto",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.grey[800],
        elevation: 0,
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            height: 600,
            width: 400,
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Tipo (Ex.: Reunião)',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Horário (Ex.: 2PM)',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Prioridade (Ex.: P3)',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Projeto (Ex.: #Reembolso)',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'TAG (Ex.: @classificação)',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: FlatButton(
                        color: Colors.grey[800],
                        child: Text(
                          "Concluído",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 0.5),
                        ),
                        onPressed: (){
                          Navigator.of(context).pop();
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
