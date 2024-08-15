// import 'package:exemplifica/utils/constants/core_colors.dart';
// import 'package:exemplifica/utils/constants/core_strings.dart';
// import 'package:exemplifica/screens/calculadoras.dart';
// import 'package:exemplifica/components/row_buttons.dart';
// import 'package:exemplifica/person_icons.dart';
// import 'package:exemplifica/screens/equacao_1.dart';
// import 'package:exemplifica/screens/equacao_2.dart';
// import 'package:exemplifica/screens/fatorial.dart';
// import 'package:exemplifica/screens/juros_compostos.dart';
// import 'package:exemplifica/screens/juros_simples.dart';
// import 'package:exemplifica/screens/mdc.dart';
// import 'package:exemplifica/screens/mmc.dart';
// import 'package:exemplifica/screens/porcentagem.dart';
// import 'package:exemplifica/screens/regra_de_3.dart';
// import 'package:exemplifica/screens/regras_basicas.dart';
// import 'package:exemplifica/screens/tabuada.dart';
// import 'package:exemplifica/widgets/atoms/custom_button.dart';
// import 'package:exemplifica/widgets/button_custom.dart';
// import 'package:exemplifica/widgets/molecules/button_primary.dart';
// import 'package:exemplifica/widgets/molecules/row_button.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   double height = 0.0;
//   double width = 0.0;

//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height * 0.1;
//     width = MediaQuery.of(context).size.width * 0.444;
//     return Scaffold(
//       backgroundColor: CoreColors.colorBackground,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(60),        
//         child: AppBar(
//             backgroundColor: CoreColors.appBarColor,
//             elevation: 2,
//             centerTitle: true,
//             title: Image.asset(
//               'images/exemplo_3.png',
//               height: 45,
//             )),
//       ),
//       body: CustomScrollView(
//         slivers: [
//           SliverFillRemaining(
//             hasScrollBody: false,
//             child: Container(
//               padding: EdgeInsets.all(10),
//               margin: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: CoreColors.appBarColor,
//                 borderRadius: BorderRadius.circular(15)
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       SizedBox(
//                         height: height * 2.2,
//                         width: width,
//                         child: ButtonBase(
//                           height: height,
//                           title: CoreStrings.titleCalculadoras,
//                           visible: false,
//                           icon: Person.calc,
//                           onTap: () {                            
//                               Navigator.push(context, MaterialPageRoute(builder: (_) => Calculadoras()));                            
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         height: height * 2.2,
//                         width: width,
//                         child: ButtonBase(
//                           height: height,
//                           title: CoreStrings.titleRegrasBasicas,
//                           visible: true,
//                           icon: Person.attention,
//                           onTap: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (_) => RegrasBasicas()));
//                           },
//                         ),
//                       ),
//                     ],
//                   ),                  
//                   RowButtons1(
//                     height: height,
//                     width: width,
//                     titleFirst: CoreStrings.titleEquacao1,
//                     titleSecond: CoreStrings.titleEquacao2,
//                     onTapFirst: () {                      
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (_) => Equacao_1()));
//                     },
//                     onTapSecond: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (_) => Equacao_2()));
//                     },
//                   ),
//                   RowButtons1(
//                     height: height,
//                     width: width,
//                     titleFirst: CoreStrings.titleFatorial,
//                     titleSecond: CoreStrings.titleTabuada,
//                     onTapFirst: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (_) => Fatorial()));
//                     },
//                     onTapSecond: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (_) => Tabuada()));
//                     },
//                   ),
//                   RowButtons1(
//                     height: height,
//                     width: width,
//                     titleFirst: CoreStrings.titleJurosCompostos,
//                     titleSecond: CoreStrings.titleJurosSimples,
//                     onTapFirst: () {                      
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (_) => JurosCompostos()));
//                     },
//                     onTapSecond: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (_) => JurosSimples()));
//                     },
//                   ),
//                   RowButtons1(
//                     height: height,
//                     width: width,
//                     titleFirst: CoreStrings.titleMmc,
//                     titleSecond: CoreStrings.titleMdc,
//                     onTapFirst: () {
//                       Navigator.push(
//                           context, MaterialPageRoute(builder: (_) => Mmc()));
//                     },
//                     onTapSecond: () {
//                      Navigator.push(
//                           context, MaterialPageRoute(builder: (_) => Mdc()));
//                     },
//                   ),
//                   RowButtons1(
//                     height: height,
//                     width: width,
//                     titleFirst: CoreStrings.titlePorcentagem,
//                     titleSecond: CoreStrings.titleRegraDe3,
//                     onTapFirst: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (_) => Porcentagem()));
//                     },
//                     onTapSecond: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (_) => RegraDe3()));
//                     },
//                   ),
//                   CustomButton(
//                     title: 'Teste',
//                     height: height,
//                     width: width,
//                     onPressed: (){},
//                   ),
//                   RowButtons(
//                     height: height,
//                     width: width,
//                     titleFirst: "Teste",
//                     titleSecond: "TEste1",
//                     onTapFirst: (){},
//                     onTapSecond: (){},
//                   ),
//                   ButtonPrimary(
//                     title: "Teste",
//                     height: height * 2.2,
//                     width: width, 
//                     colorCard: Colors.amber, 
//                     colorIcon: Colors.black,
//                     colorText: Colors.black, 
//                     sizeIcon: 45, 
//                     icon: Icons.date_range, 
//                     onTap: (){}, 
//                     fontSize: 16,
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
