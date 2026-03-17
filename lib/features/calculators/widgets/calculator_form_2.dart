// import 'package:exemplifica/core/constants/core_fontSize.dart';
// import 'package:exemplifica/core/extensions/math_category_color.dart';
// import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
// import 'package:exemplifica/core/ui/widgets/text_custom.dart';
// import 'package:exemplifica/features/calculators/widgets/text_field_input_custom.dart';
// import 'package:flutter/material.dart';
// import 'package:exemplifica/core/constants/core_strings.dart';
// import 'package:exemplifica/features/calculators/widgets/row_buttons.dart';

// class CalculatorForm2 extends StatelessWidget {
//   final double height;
//   final double width;
//   final List<TextEditingController> controller;
//   final void Function() onTapFirst;
//   final void Function() onTapSecond;
//   final MathCategory category;

//   const CalculatorForm2({
//     Key? key,
//     required this.height,
//     required this.width,
//     required this.controller,
//     required this.onTapFirst,
//     required this.onTapSecond,
//     required this.category,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10),
//       child: Container(
//         decoration: BoxDecoration(
//           color: category.color!.shade200,
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   TextCustom(text: CoreStrings.attribute1),
//                   TextCustom(text: CoreStrings.attribute2),
//                 ],
//               ),
//               // Row(
//               //   children: [
//               //     TextFieldInputCustom(
//               //         controller: controller[0],
//               //         mainAxisAlignment: MainAxisAlignment.start,
//               //         title: "",
//               //         hintText: ""),
//               //     controller.length < 3
//               //         ? Padding(
//               //             padding: const EdgeInsets.only(left: 50),
//               //             child: TextCustom(
//               //               text: CoreStrings.percent100,
//               //               fontSize: CoreFontSize.h_22,
//               //             ),
//               //           )
//               //         : TextFieldInputCustom(
//               //             controller: controller[2],
//               //             mainAxisAlignment: MainAxisAlignment.start,
//               //             title: "",
//               //             hintText: ""),
//               //   ],
//               // ),
//               Row(
//   children: [
//     Flexible(
//       child: TextFieldInputCustom(
//         controller: controller[0],
//         mainAxisAlignment: MainAxisAlignment.start,
//         title: "",
//         hintText: "",
//       ),
//     ),
//     TextCustom(
//       text: CoreStrings.percent100,
//       fontSize: CoreFontSize.h_22,
//     ),

//     const SizedBox(width: 12),
//   ],
// ),
//               Row(
//                 children: [
//                   TextFieldInputCustom(
//                     controller: controller[1],
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     title: "",
//                     hintText: "",
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 50),
//                     child: TextCustom(
//                       text: CoreStrings.variableX,
//                       fontSize: CoreFontSize.h_22,
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(height: 15),
//               RowButtons(
//                 category: category,
//                 height: height * 0.05,
//                 width: width * 0.35,
//                 titleFirst: CoreStrings.calculate,
//                 titleSecond: CoreStrings.clear,
//                 onTapFirst: onTapFirst,
//                 onTapSecond: onTapSecond,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:exemplifica/core/constants/core_fontSize.dart';
import 'package:exemplifica/core/extensions/math_category_color.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/widgets/text_custom.dart';
import 'package:exemplifica/features/calculators/widgets/text_field_input_custom.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/features/calculators/widgets/row_buttons.dart';

class CalculatorForm2 extends StatelessWidget {
  final double height;
  final double width;
  final List<TextEditingController> controller;
  final void Function() onTapFirst;
  final void Function() onTapSecond;
  final MathCategory category;

  const CalculatorForm2({
    Key? key,
    required this.height,
    required this.width,
    required this.controller,
    required this.onTapFirst,
    required this.onTapSecond,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          color: category.color!.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextCustom(text: CoreStrings.attribute1),
                  TextCustom(text: CoreStrings.attribute2),
                ],
              ),
              const SizedBox(height: 10),
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(),
                  1: IntrinsicColumnWidth(),
                },
                children: [
                  TableRow(
                    children: [
                      TextFieldInputCustom(
                        controller: controller[0],
                        mainAxisAlignment: MainAxisAlignment.start,
                        title: "",
                        hintText: "",
                      ),
                      Center(
                        child: controller.length < 3
                            ? SizedBox(
                              width: 110,
                              child: TextCustom(
                                  text: CoreStrings.percent100,
                                  fontSize: CoreFontSize.h_22,
                                ),
                            )
                            : TextFieldInputCustom(
                                controller: controller[2],
                                mainAxisAlignment: MainAxisAlignment.start,
                                title: "",
                                hintText: "",
                              ),
                      ),
                    ],
                  ),
                  const TableRow(
                    children: [
                      SizedBox(height: 12),
                      SizedBox(height: 12),
                    ],
                  ),
                  TableRow(
                    children: [
                      TextFieldInputCustom(
                        controller: controller[1],
                        mainAxisAlignment: MainAxisAlignment.start,
                        title: "",
                        hintText: "",
                      ),                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          Align(alignment: Alignment.bottomCenter,
                            child: TextCustom(
                              text: CoreStrings.variableX,
                              fontSize: CoreFontSize.h_22,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              RowButtons(
                category: category,
                height: height * 0.05,
                width: width * 0.35,
                titleFirst: CoreStrings.calculate,
                titleSecond: CoreStrings.clear,
                onTapFirst: onTapFirst,
                onTapSecond: onTapSecond,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
