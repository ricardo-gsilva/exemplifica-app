import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_mmc.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:exemplifica_git/screens/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class CalcMmc extends StatefulWidget {
  @override
  _CalcMmcState createState() => _CalcMmcState();
}

class _CalcMmcState extends State<CalcMmc> {
  final ModelMmc modelMmc = ModelMmc();
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.35;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleMmc,
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
                  "Digite 2 números para efetuar o cálculo do MMC!",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 15, left: 15),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .27,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Valor 1",
                            labelText: "",
                            labelStyle: TextStyle(color: Colors.black87)),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 23.0),
                        controller: modelMmc.val1,
                        maxLength: 5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .27,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Valor 2",
                            labelText: "",
                            labelStyle: TextStyle(color: Colors.black87)),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 23.0),
                        controller: modelMmc.val2,
                        maxLength: 5,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonBase(
                      onTap: (() {
                        setState(() {
                          modelMmc.verificarCampos();
                        });
                      }),
                      title: 'Calcular',
                      height: height,
                      width: width,
                    ),
                    ButtonBase(
                      onTap: (() {
                        setState(() {
                          modelMmc.resetCampos();
                        });
                      }),
                      title: 'Limpar',
                      height: height,
                      width: width,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  modelMmc.resultMmc,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 21.0),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
                child: Text(
                  modelMmc.resultMmc1,
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
