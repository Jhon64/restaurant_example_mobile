import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive/responsive.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
        // appBar: AppBar(),
        body: Column(
      children: [
        Container(
            // color: Colors.blue,
            child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
              // height: responsive.heightPercent(2.0),
              // color: Colors.grey,
              margin: EdgeInsets.all(4.0),
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Text(
                  "Bienvenido, Ingrese Credenciales",
                  style: TextStyle(fontSize: 20.0),
                ),
              )),
        )),
        Container(
          padding: EdgeInsets.all(responsive.diagonalPercent(2.0)),
          child: Column(
            children: [
              CupertinoTextField(
                placeholder: "Usuario",
              ),
              Padding(padding: EdgeInsets.all(responsive.diagonalPercent(0.4))),
              CupertinoTextField(
                placeholder: "Password",
              ),
              Padding(padding: EdgeInsets.all(responsive.diagonalPercent(0.4))),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Login"),
                  onPressed: null,
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(2.0)),
                      // textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(color: Colors.white)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent)),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
