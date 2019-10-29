import 'package:flutter/material.dart';
import 'package:prototipo_focus/screens/cadastro.dart';
import 'package:prototipo_focus/screens/caixa_entrada.dart';

import '../input_field.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          "FOCUS",
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
        backgroundColor: Colors.grey[800],
        elevation: 0,
        centerTitle: false,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                width: 400,
                height: 600,
                color: Colors.grey[600],
                child: Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Container(
                    padding: EdgeInsets.only(top: 50),
                    width: 400,
                    height: 400,
                    color: Colors.grey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(800)),
                              color: Colors.white),
                          child: Icon(
                            Icons.person,
                            size: 60,
                            color: Colors.grey[600],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                InputField(
                                  hint: "Full Name",
                                  obscure: false,
                                  icon: Icons.person_outline,
                                  type: TextInputType.text,
                                ),
                                InputField(
                                  hint: "Password",
                                  obscure: true,
                                  icon: Icons.lock_outline,
                                  type: TextInputType.text,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => CaixaEntradaPage())
                              );
                            },
                            child: Text(
                              "ENTRAR",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontSize: 18,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ),
                        SizedBox(height: 80,),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => CadastroPage())
                            );
                          },
                          child: Text(
                            "Não possui uma conta? Cadastre-se!",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 16,
                                letterSpacing: 0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ),
        ],
      )
    );
  }
}
