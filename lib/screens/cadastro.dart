import 'package:flutter/material.dart';

import '../input_field.dart';

class CadastroPage extends StatefulWidget {

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          "Cadastro",
          style: TextStyle(fontSize: 30, color: Colors.white),
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
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Editar foto",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                              fontSize: 16,
                              letterSpacing: 0.5),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              InputField(
                                hint: "E-mail@exemplo.com.br",
                                obscure: false,
                                icon: Icons.person_outline,
                                type: TextInputType.emailAddress,
                              ),
                              InputField(
                                hint: "Senha",
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
                            _scaffoldKey.currentState.showSnackBar(
                                SnackBar(content: Text("Usuário alterado com sucesso!",
                                style: TextStyle(color: Colors.grey[800]),),
                                  backgroundColor: Colors.grey[400],
                                  duration: Duration(seconds: 2),)
                            );
                            Future.delayed(const Duration(milliseconds: 2000), () {
                                Navigator.of(context).pop();
                            });
                          },
                          color: Colors.grey[800],
                          child: Text(
                            "Pronto!",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 14,
                                letterSpacing: 0.5),
                          ),
                        ),
                      ),
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
