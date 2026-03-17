class PercentageMathEngine {

  Map<String, String> calculate(double valor1, double valor2) {

    double mult2 = valor2 * 100;
    double result = mult2 / valor1;

    String valor1f = _format(valor1);
    String valor2f = _format(valor2);
    String mult2f = _format(mult2);
    String resultf = _format(result);

    String process =
        "$valor2f x 100 = $valor1f x X\n"
        "$valor1f · X = $mult2f\n"
        "X = $mult2f / $valor1f\n"
        "X = $resultf%";

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