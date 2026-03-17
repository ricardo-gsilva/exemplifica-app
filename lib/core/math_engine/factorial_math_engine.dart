class FactorialMathEngine {

  Map<String, String> calculate(int value) {

    String process = "";
    String result = "";
    String info = "";

    if (value == 0) {

      info = "Obs: O valor fatorial de 0 será sempre o número 1.";

      return {
        "process": "",
        "result": "0! = 1",
        "info": info,
      };
    }

    if (value > 15) {

      return {
        "process": "Devido a exigência de processamento, não faremos cálculos com valores acima de 15.",
        "result": "",
        "info": "",
      };
    }

    List<int> numbers = [];

    for (int i = value; i >= 1; i--) {
      numbers.add(i);
    }

    final factorialExpression = numbers.join(" x ");

    int resultValue = 1;

    for (final n in numbers) {
      resultValue *= n;
    }

    process =
        "$value! = $factorialExpression\n\n"
        "$factorialExpression = $resultValue";

    result = "$value! = $resultValue";

    info = "Obs: O valor fatorial de 0 será sempre o número 1.";

    return {
      "process": process,
      "result": result,
      "info": info,
    };
  }
}