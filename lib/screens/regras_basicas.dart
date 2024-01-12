import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/screens/widgets/button_custom.dart';
import 'package:exemplifica_git/screens/expoentes.dart';
import 'package:exemplifica_git/screens/mult_div.dart';
import 'package:exemplifica_git/screens/parentesis.dart';
import 'package:exemplifica_git/screens/regra_sinal.dart';
import 'package:exemplifica_git/screens/soma_sub.dart';
import 'package:flutter/material.dart';

class RegrasBasicas extends StatefulWidget {
  @override
  _RegrasBasicasState createState() => _RegrasBasicasState();
}

class _RegrasBasicasState extends State<RegrasBasicas> {
  double height = 0.0;
  double width = 0.0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.9;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleRegrasBasicas,
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
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
        
      ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ButtonBase(
                  height: height,
                  width: width,
                  title: "1º Parêntesis",
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Parentesis())
                    );
                  },
                ),
              ),
              ButtonBase(
                height: height,
                width: width,
                title: "2º Expoentes",
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Expoentes())
                  );
                },
              ),
              ButtonBase(
                height: height,
                width: width,
                title: "3º Multiplicações e Divisões",
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MultiplicaDiv())
                  );
                },
              ),
              ButtonBase(
                height: height,
                width: width,
                title: "4º Somas e Subtrações",
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SomaSubtracao())
                  );
                },
              ),
              ButtonBase(
                height: height,
                width: width,
                title: "Regras de Sinais",
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (_) => RegrasSinais())
                  );
                },
              ),            
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
