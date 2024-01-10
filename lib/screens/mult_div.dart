import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:flutter/material.dart';

class MultiplicaDiv extends StatefulWidget {
  @override
  _MultiplicaDivState createState() => _MultiplicaDivState();
}

class _MultiplicaDivState extends State<MultiplicaDiv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
        appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text(
              CoreStrings.titleMultipDiv,
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
            )),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Talvez essa seja a regra que mais confunde as pessoas. Qual é o momento que eu "
              "resolvo a multiplicação e a divisão? Vamos entender isso agora!",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_2.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Tenho certeza que em algum momento utilizando alguma rede social, você se"
              " deparou com algo do tipo. Muitas pessoas por desconhecerem as regras de sinais,"
              " acabam errando o resultado. Normalmente o que vemos, são pessoas tentando "
              " resolver primeiro a soma e depois a multiplicação. Mas a multiplicação deve"
              " ser resolvida primeiro!",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Resolvendo sem o conhecimento de regras matemáticas:",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_3.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Resolvendo com conhecimento de regras matemáticas:",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_4.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Como todos podem ver, a diferença de resultados é enorme. Lembrem-se, sempre resolvam primeiro"
              " a multiplicação e o mesmo serve no caso de uma divisão. Veja um exemplo:",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_5.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Como é notável, multiplicações e divisões, serão sempre operações resolvidas antes de somas"
              " e subtrações. Mas e se tivermos uma multiplicação e uma divisão ao mesm"
              " tempo? Veja o exemplo:",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .3,
                child: Image.asset("images/mult_div/multiplica_divi_6.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Entre uma multiplicação e uma divisão, a regra é seguir primeiro pela multiplicação e"
              " depois fazer a divisão. Veja abaixo:",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .3,
                child: Image.asset("images/mult_div/multiplica_divi_7.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Vamos dar um exemplo um pouco mais complexo para fixar a compreensão.",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .55,
                child: Image.asset("images/mult_div/multiplica_divi_8.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Seguimos primeiro resolvendo a multiplicação e logo depois a divisão.",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .35,
                child: Image.asset("images/mult_div/multiplica_divi_9.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Após resolver a multiplicação e a divisão, podemos dar continuidade a resolução das outras"
              " operações. Segue a continuação:",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_10.png"),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
            child: Text(
              "Com isso tivemos uma breve explicação sobre multiplicação e divisão nas regras de matemática."
              " Lembre-se sempre que primeiro se resolve a multiplicação, depois a divisão e após isso"
              " faremos as somas e subtrações.",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ])));
  }
}
