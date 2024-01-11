import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_fatorial.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:exemplifica_git/screens/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class CalcFatorial extends StatefulWidget {
  @override
  _CalcFatorialState createState() => _CalcFatorialState();
}

class _CalcFatorialState extends State<CalcFatorial> {
  // final AdMob adMob = AdMob();

  final ModelFatorial modelFatorial = ModelFatorial();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.4;
    double height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleFatorial,
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Text(
                  "Digite um número para ver o cálculo do fatorial.",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 10),
                    child: Text(
                      "Digite o valor:",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15, left: 15),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .27,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "valor",
                            labelText: "",
                            labelStyle: TextStyle(color: Colors.black87)),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 23.0),
                        controller: modelFatorial.val1,
                        maxLength: 2,
                      ),
                    ),
                  ),
                ],
              ),              
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     ButtonBase(
                  onTap: (() {
                      setState(() {
                        modelFatorial.verificarCampos();
                      });
                    }
                  ),
                  title: 'Calcular',
                  height: height,
                  width: width,
                ),
                ButtonBase(
                  onTap: (() {
                      setState(() {
                        modelFatorial.resetCampos();
                      });
                    }
                  ),
                  title: 'Limpar',
                  height: height,
                  width: width,
                ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Text(
                  modelFatorial.resultFat,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 21.0),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Text(
                  modelFatorial.resultFat1,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 21.0),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(color: Colors.black, height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
