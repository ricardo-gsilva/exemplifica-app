import 'package:intl/intl.dart';

class LinearEquationMathEngine {
  Map<String, String> calculate(double a, double b) {
    const double r = 0;

    final formatInt = NumberFormat("0");
    final formatDecimal = NumberFormat("0.00");
    final formatPlusInt = NumberFormat("+ 0");
    final formatPlusDecimal = NumberFormat("+ 0.00");
    final formatSpaceInt = NumberFormat(" 0");
    final formatSpaceDecimal = NumberFormat(" 0.00");
    final formatRaw = NumberFormat("");

    String formatNumber(double value) {
      if (value == value.floor()) {
        return formatInt.format(value);
      }
      return formatDecimal.format(value);
    }

    String formatLineTwoB(double value) {
      if ((value == value.floor()) && (value < 0)) {
        return formatSpaceInt.format(value);
      } else if ((value == value.floor()) && (value >= 0)) {
        return formatPlusInt.format(value);
      } else if ((value != value.floor()) && (value < 0)) {
        return formatSpaceDecimal.format(value);
      }
      return formatPlusDecimal.format(value);
    }

    String formatLineThreeB(double value) {
      final num inverted = -value;

      if ((inverted == inverted.floor()) && (inverted < 0)) {
        return formatSpaceInt.format(inverted);
      } else if ((inverted == inverted.floor()) && (inverted >= 0)) {
        return formatPlusInt.format(inverted);
      } else if ((inverted != inverted.floor()) && (inverted < 0)) {
        return formatSpaceDecimal.format(inverted);
      }
      return formatPlusDecimal.format(inverted);
    }

    String formatLineFourResult(double numB, double numR) {
      final value = numR - numB;
      if (value == value.floor()) {
        return formatInt.format(value);
      }
      return formatDecimal.format(value);
    }

    String formatX(double a, double b, double r) {
      final x = (r - b) / a;
      if (x == x.floor()) {
        return formatInt.format(x);
      }
      return formatDecimal.format(x);
    }

    final formatA = formatNumber(a);
    final formatR = formatInt.format(r);

    String formatB;
    if ((b == b.floor()) && (b < 0)) {
      formatB = formatRaw.format(b);
    } else if ((b == b.floor()) && (b >= 0)) {
      formatB = formatInt.format(b);
    } else {
      formatB = formatDecimal.format(b);
    }

    final lineFour = formatLineFourResult(b, r);
    final valueX = formatX(a, b, r);

    final process = """
${formatA}x + ($formatB) = $formatR
${formatA}x${formatLineTwoB(b)} = $formatR
${formatA}x = $formatR${formatLineThreeB(b)}
${formatA}x = $lineFour
x = $lineFour / $formatA
x = $valueX
""";

    return {
      "process": process,
      "tip": "",
    };
  }
}