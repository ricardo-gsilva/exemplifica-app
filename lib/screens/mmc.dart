// import 'package:exemplifica/utils/constants/core_colors.dart';
// import 'package:exemplifica/person_icons.dart';
// import 'package:exemplifica/screens/calculadoras/calc_mmc.dart';
// import 'package:exemplifica/utils/constants/strings/strings_mmc.dart';
// import 'package:flutter/material.dart';

// class Mmc extends StatefulWidget {
//   @override
//   _MmcState createState() => _MmcState();
// }

// class _MmcState extends State<Mmc> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: CoreColors.colorBackground,
//         appBar: AppBar(
//           backgroundColor: CoreColors.appBarColor,
//           title: Text(
//             CoreStringsMmc.titleMmc,
//             style: TextStyle(color: CoreColors.textPrimary),
//           ),
//           centerTitle: true,
//           automaticallyImplyLeading: false,
//           leading: IconButton(
//             icon: Icon(Icons.reply),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(
//                 Person.calc,
//                 color: CoreColors.textPrimary,
//               ),
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => CalcMmc()));
//               },
//             )
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Column(children: <Widget>[
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text(
//                 CoreStringsMmc.text1_mmc,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text(
//                 CoreStringsMmc.text2_mmc,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * .9,
//                   child: Image.asset("images/operacoes/mmc/mmc_2.png"),
//                 )),
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text(
//                 CoreStringsMmc.text3_mmc,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text(
//                 CoreStringsMmc.text4_mmc,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * .45,
//                   child: Image.asset("images/operacoes/mmc/mmc_3.png"),
//                 )),
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text(
//                 CoreStringsMmc.text5_mmc,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * .9,
//                   child: Image.asset("images/operacoes/mmc/mmc_4.png"),
//                 )),
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text(
//                 CoreStringsMmc.text6_mmc,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * .45,
//                   child: Image.asset("images/operacoes/mmc/mmc_5.png"),
//                 )),
//             Padding(
//               padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
//               child: Text(
//                 CoreStringsMmc.text7_mmc,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//           ]),
//         ),
//       );
//   }
// }
