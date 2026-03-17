class LeastCommonMultipleMathEngine {

  Map<String, String> calculate(int a, int b) {

    int val1 = a;
    int val2 = b;

    int divisor = 2;
    int mmc = 1;

    String process = "";

    while (val1 != 1 || val2 != 1) {

      while (val1 % divisor != 0 && val2 % divisor != 0) {
        divisor++;
      }

      process += "$val1, $val2 | $divisor\n";

      if (val1 % divisor == 0) {
        val1 ~/= divisor;
      }

      if (val2 % divisor == 0) {
        val2 ~/= divisor;
      }

      mmc *= divisor;
    }

    process += "1, 1 | 1\n";

    final tip =
        "Após chegar ao valor 1, multiplique todos os números que ficaram ao lado da barra.\n\n"
        "Multiplicando todos os divisores utilizados na fatoração temos o MMC = $mmc";

    return {
      "process": process,
      "tip": tip,
    };
  }
}