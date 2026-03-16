class GreatestCommonDivisorMathEngine {

  Map<String, String> calculate(int a, int b) {

    int val1 = a;
    int val2 = b;

    int divisor = 2;

    String process = "";
    int mdc = 1;

    List<int> factors = [];

    while (val1 != 1 || val2 != 1) {

      while (val1 % divisor != 0 && val2 % divisor != 0) {
        divisor++;
      }

      if (val1 % divisor == 0 && val2 % divisor == 0) {

        process += "$val1, $val2 | $divisor - Ok\n";

        val1 ~/= divisor;
        val2 ~/= divisor;

        factors.add(divisor);

        mdc *= divisor;

      } else if (val1 % divisor == 0) {

        process += "$val1, $val2 | $divisor\n";
        val1 ~/= divisor;

      } else if (val2 % divisor == 0) {

        process += "$val1, $val2 | $divisor\n";
        val2 ~/= divisor;

      }

      if (val1 == 1 && val2 == 1) {
        process += "1, 1 | 1 - Ok\n";
        factors.add(1);
      }
    }

    final multiplication = factors.join(" x ");

    final tip =
        "Os valores com 'Ok' são utilizados para calcular o MDC.\n"
        "Multiplicando todos eles temos:\n\n"
        "$multiplication = $mdc\n\n"
        "MDC = $mdc";

    return {
      "process": process,
      "tip": tip,
    };
  }
}