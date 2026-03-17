class RuleOfThreeMathEngine {

  Map<String, String> calculate(
    double valor1,
    double valor2,
    double valor3,
  ) {

    double mult = valor2 * valor3;
    double result = mult / valor1;

    String v1 = _format(valor1);
    String v2 = _format(valor2);
    String v3 = _format(valor3);
    String multf = _format(mult);
    String resf = _format(result);

    String process =        
        "$v3 → X\n"
        "$v1 → $v2\n\n"
        "$v2 x $v3 = $v1 x X\n"
        "$v1 · X = $multf\n"
        "X = $multf / $v1\n"
        "X = $resf";

    return {
      "process": process,
      "tip": "",
    };
  }

  static String _format(double value) {

    if (value == value.floor()) {
      return value.toInt().toString();
    }

    return value.toStringAsFixed(2);
  }
}