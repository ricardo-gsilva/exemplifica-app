import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_equacao_1.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:exemplifica_git/screens/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class CalcEquacao1 extends StatefulWidget {
  @override
  _CalcEquacao1State createState() => _CalcEquacao1State();
}

class _CalcEquacao1State extends State<CalcEquacao1> {
  final ModelEquacao1 modelCalc1 = ModelEquacao1();
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.4;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleEquacao1,
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
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                HomePage()), (Route<dynamic> route) => false);
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
                  CoreStrings.text1_CalcEquacao1,
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Text(
                  CoreStrings.text2_CalcEquacao1,
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Digite os valores de 'a' e 'b'",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Text("'a':"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .18,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "a",
                                labelText: "",
                                labelStyle: TextStyle(color: Colors.black87)),
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.black, fontSize: 23.0),
                            controller: modelCalc1.val1,
                            maxLength: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text("'b':"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .18,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "b",
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.black87)),
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 23.0),
                          controller: modelCalc1.val2,
                          maxLength: 4,
                        ),
                      ),
                    ],
                  )
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
                        modelCalc1.verificarCampo();
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
                        modelCalc1.resetCampos();
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
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 25, bottom: 5),
                child: Text(
                  modelCalc1.resultEq1_1,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 21.0),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
