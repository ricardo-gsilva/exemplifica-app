import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/button_custom.dart';
import 'package:exemplifica/screens/expoentes.dart';
import 'package:exemplifica/screens/mult_div.dart';
import 'package:exemplifica/screens/parentesis.dart';
import 'package:exemplifica/screens/regra_sinal.dart';
import 'package:exemplifica/screens/soma_sub.dart';
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
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: CoreColors.appBarColor,
        title: Text(
          CoreStrings.titleRegrasBasicas,
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
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
        
      ]),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: CoreColors.appBarColor,
              borderRadius: BorderRadius.circular(15)
            ),
          child: Column(
            children: <Widget>[
              ButtonBase(
                height: height,
                width: width,
                title: "1º Parêntesis",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Parentesis()));
                },
              ),
              ButtonBase(
                height: height,
                width: width,
                title: "2º Expoentes",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Expoentes()));
                },
              ),
              ButtonBase(
                height: height,
                width: width,
                title: "3º Multiplicações e Divisões",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => MultiplicaDiv()));
                },
              ),
              ButtonBase(
                height: height,
                width: width,
                title: "4º Somas e Subtrações",
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (_) => SomaSubtracao()));
                },
              ),
              ButtonBase(
                height: height,
                width: width,
                title: "Regras de Sinais",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => RegrasSinais()));
                },
              ),            
            ],
          ),
        ),
      ),
      );
  }
}
