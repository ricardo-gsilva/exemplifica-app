import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_tabuada.dart';
import 'package:exemplifica_git/screens/components/row_buttons.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class CalcTabuada extends StatefulWidget {
  @override
  _CalcTabuadaState createState() => _CalcTabuadaState();
}

class _CalcTabuadaState extends State<CalcTabuada> {
  final _modelTabuada = ModelTabuada();
  double height = 0;
  double width = 0;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.35;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleTabuada,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.reply,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Digite um número no campo abaixo que seja entre 0 e 99999 e use o botão de calcular para que você possa"
              " ver a tabuada do número escolhido.",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(15.0),
              child: Form(
                key: _modelTabuada.formKey,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Digite Aqui",
                        labelStyle: TextStyle(color: Colors.black87)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 23.0),
                    controller: _modelTabuada.nTabuada,
                    maxLength: 5,
                  ),
                ),
              )),
          RowButtons(
            titleFirst: CoreStrings.calc,
            titleSecond: CoreStrings.clear,
            paddingTop: 10,
            height: height,
            width: width,
            onTapFirst: (() {
              setState(() {
                _modelTabuada.verificarCampo();
                visible = !visible;
              });
            }),
            onTapSecond: (() {
              setState(() {
                _modelTabuada.resetCampos();
                visible = !visible;
              });
            }),
          ),
          Visibility(
            visible: visible,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    _modelTabuada.infoText,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black, fontSize: 25.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    _modelTabuada.dica,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black, fontSize: 25.0),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
