class CoreStringsMmc {
  static const String titleMmc = 'M.M.C';
  static const String text1_mmc = 
                "MMC significa 'mínimo múltiplo comum' e corresponde ao menor número inteiro positivo, "
                "diferente de zero que é múltiplo ao mesmo tempo de dois ou mais números. Para saber "
                "se um número é múltiplo de um outro, é necessário descobrir se um desses números é "
                "divisível pelo outro. Veja um exemplo simples, o número 9 é múltiplo de 3, pois ele "
                "também é divisível por 3.";
  static const String text2_mmc = 
                "Para encontrar o MMC de 2 números, pode ser usada a tabuada desse números. O MMC de "
                "2 e 5 pode ser encontrado na própria tabuada desses mesmos números. Na tabuada do 2, "
                "você irá encontrar 2 x 5 = 10 e na tabuada do 5, iremos encontrar 5 x 2 = 10. Logo "
                "podemos definir que o mínimo múltiplo comum (MMC) de 2 e 5 é o número 10. Mas essa "
                "é uma maneira que só pode ser utilizada com valores pequenos, não funcionando bem "
                "com números grandes. Vamos tentar encontrar o MMC de 30 e 22. Para conseguir "
                "encontrar o MMC deles, iremos colocar os valores um ao lado do outro e fazer uma "
                "divisão, até que se chegue ao menor valor da divisão deles que é o 1. Veja como é "
                "feito:";
  static const String text3_mmc = 
                "Não é complicado de se resolver. Primeiramente é feito a divisão dos valores por 2, "
                "no próximo passo não foi possível dividir 11 e 15 por 2, então seguimos para o "
                "próximo número que é o 3. Como é possível dividir o 15 por 3, então conseguimos "
                "aplicar esse valor. Mas caso nenhum fosse divisível por 3, iríamos para o próximo "
                "número que seria 4 ou até outro número que fosse divísivel. Como foi possível "
                "ver, essa regra foi aplicada até que os valores finais fossem 1 para os dois números "
                "iniciais. Entãos pegamos os valores que foram usados para a divisão e fazemos a "
                "multiplicação de todos eles, assim encontramos o valor final de 220 que é o MMC dos "
                "números 22 e 30.";
  static const String text4_mmc = 
                "Também é preciso lembrar que temos o mínimo múltiplo comum com frações, para que seja "
                "possível somar ou subtrair frações é preciso que os denominadores sejam iguais. "
                "Então iremos calcular o MMC entre os denominadores e então teremos o novo "
                "denominador das frações. Veja o exemplo:";
  static const String text5_mmc = 
                "Como é possível ver os denominadores 4 e 9 são diferentes e precisamos calcular o MMC "
                "deles para dar continuidade. Iremos fatorar da seguinte forma:";
  static const String text6_mmc = 
                "Agora que temos o MMC desses valores, seguimos da seguinte forma:";
  static const String text7_mmc = 
                "Pegamos o valor do numerador que é o 3 e multiplicamos pelos denominadores iniciais "
                "Teremos os valores 12 e 27, então faremos as somas desses valores e iremos dividir "
                "pelo novo denominador encontrado que é o 36. Teremos 39/36 que pode ser simplificado "
                "por 3 já que tanto o valor 39, quanto o valor 36 podem ser divididos por 3 e teremos "
                "um valor final de 13/12. A princípio pode parecer difícil, mas com um pouco de "
                "prática logo fica simples de ser compreendido.";

}