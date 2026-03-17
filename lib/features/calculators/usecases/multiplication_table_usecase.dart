import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/core/math_engine/multiplication_table_math_engine.dart';

class MultiplicationTableUsecase {

  final MultiplicationTableMathEngine _multiplicationTableMathEngine = MultiplicationTableMathEngine();

  Map<String, String> execute(int value) {

    if (value > 99999) {
      return {
        "info": CoreStrings.maxValue99999Message,
        "tip": ""
      };
    }

    final table = _multiplicationTableMathEngine.generateTable(value);

    final info = table.join("\n");

    return {
      "info": info,
      "tip": CoreStrings.observationMultiplication
    };
  }
}