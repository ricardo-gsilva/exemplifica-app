import 'dart:math';
import 'package:intl/intl.dart';

class QuadraticEquationMathEngine {
  Map<String, String> calculate(double a, double b, double c) {
    final dfInt = NumberFormat("0");
    final dfDec = NumberFormat("0.0000");

    String format(num v) {
      if (v == v.floor()) return dfInt.format(v);
      return dfDec.format(v);
    }

    if (a == 0) {
      return {"process": "O valor de 'a' não pode ser 0.", "tip": ""};
    }

    final delta = pow(b, 2) - 4 * a * c;

    final deltaStr = format(delta);
    final bStr = format(b);
    final aStr = format(a);
    final cStr = format(c);

    String processDelta = """
Δ = (b)² - 4ac
Δ = ($bStr)² - 4 * $aStr * $cStr
Δ = ${format(pow(b, 2))} ${format(-4 * a * c)}
Δ = $deltaStr
""";

    if (delta < 0) {
      return {"process": processDelta + "\nO valor de Δ é negativo. Portanto não existem raízes reais.", "tip": ""};
    }

    final sqrtDelta = sqrt(delta);
    final twoA = 2 * a;

    final x1 = (-b + sqrtDelta) / twoA;
    final x2 = (-b - sqrtDelta) / twoA;

    final sqrtDeltaStr = format(sqrtDelta);
    final twoAStr = format(twoA);
    final x1Str = format(x1);
    final x2Str = format(x2);

    String processX1 = """
x = (-b ± √Δ) / 2a

x₁ = (-($bStr) + √$deltaStr) / (2 * $aStr)
x₁ = (${format(-b)} + $sqrtDeltaStr) / $twoAStr
x₁ = ${format((-b + sqrtDelta))} / $twoAStr
x₁ = $x1Str
""";

    String processX2 = """
x₂ = (-($bStr) - √$deltaStr) / (2 * $aStr)
x₂ = (${format(-b)} - $sqrtDeltaStr) / $twoAStr
x₂ = ${format((-b - sqrtDelta))} / $twoAStr
x₂ = $x2Str
""";

    String result = """
As raízes reais encontradas são:

x₁ = $x1Str
x₂ = $x2Str
""";

    return {"process": processDelta + "\n" + processX1 + "\n" + processX2 + "\n" + result, "tip": ""};
  }
}
