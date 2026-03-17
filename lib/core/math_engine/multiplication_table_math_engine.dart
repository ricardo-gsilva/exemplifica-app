class MultiplicationTableMathEngine {

  List<String> generateTable(int value) {
    List<String> result = [];

    for (int i = 0; i <= 10; i++) {
      result.add("$value x $i = ${value * i}");
    }

    return result;
  }

}