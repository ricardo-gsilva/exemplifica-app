import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/controller/controller_juros_simples.dart';
import 'package:exemplifica/components/row_buttons.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:exemplifica/components/text_field_input.dart';
import 'package:flutter/material.dart';

class CalcJurosS extends StatefulWidget {
  @override
  _CalcJurosSState createState() => _CalcJurosSState();
}

class _CalcJurosSState extends State<CalcJurosS> {
  final ModelJurosSimples modelJurosSimples = ModelJurosSimples();
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.35;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: CoreColors.appBarColor,
        title: Text(
          CoreStrings.titleJurosSimples,
          style: TextStyle(color: CoreColors.textPrimary),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.reply,
            color: CoreColors.textPrimary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: CoreColors.textPrimary,
            ),
            onPressed: () {
              // Navigator.of(context).pushAndRemoveUntil(
              //     MaterialPageRoute(builder: (context) => HomePage()),
              //     (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Text(
            "Digite os valores. Preencha ao menos 3 campos!",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: CoreColors.appBarColor,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            children: <Widget>[
              TextFieldInput(
                title: "Capital:",
                hintText: "capital(R\$)",
                controller: modelJurosSimples.c
              ),
              TextFieldInput(
                title: "Taxa:",
                hintText: "% a.m",
                controller: modelJurosSimples.i
              ),
              TextFieldInput(
                title: "Meses:",
                hintText: "Tempo",
                controller: modelJurosSimples.t
              ),
              TextFieldInput(
                title: "Juros:",
                hintText: "%",
                controller: modelJurosSimples.j
              ),            
              RowButtons1(
                titleFirst: CoreStrings.calc,
                titleSecond: CoreStrings.clear,
                paddingTop: 10,
                height: height,
                width: width,
                onTapFirst: (() {
                  setState(() {
                    modelJurosSimples.verificarCampos();
                  });
                }),
                onTapSecond: (() {
                  setState(() {
                    modelJurosSimples.resetCampos();
                  });
                }),
              ),              
            ],
          ),
        ),
        Visibility(
          visible: modelJurosSimples.visible,
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Text(
                  modelJurosSimples.resultjS,
                  textAlign: TextAlign.left,
                  style:
                      TextStyle(color: CoreColors.textPrimary, fontSize: 20.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  modelJurosSimples.resultjS_1,
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.all(10),
                child: Text(
                  modelJurosSimples.resultjS_2,
                  textAlign: TextAlign.left,
                  style:
                      TextStyle(color: CoreColors.textPrimary, fontSize: 20.0),
                ),
              ),
            ],
          ),
        )
      ])),
    );
  }

  @override
  void dispose() {
    modelJurosSimples.c.dispose();
    modelJurosSimples.i.dispose();
    modelJurosSimples.j.dispose();
    modelJurosSimples.t.dispose();
    super.dispose();
  }
}
