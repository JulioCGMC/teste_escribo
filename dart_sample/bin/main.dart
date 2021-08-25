import 'dart:io';

int printDivisiblesSum(int limit, List<int> dividers) {
  List<int> divisions = [0];
  for (var i = 0; i < limit; i++) {
    dividers.forEach((d) {
      if ((i % d == 0) && !divisions.contains(i)) {
        divisions.add(i);
      }
    });
  }
  return divisions.reduce((a, b) => a + b);
}

void main() {
  stdout.write('Insira o limite: ');
  var v = stdin.readLineSync();
  if (v != null && int.tryParse(v) != null){
    var n = int.parse(v);
    var response = printDivisiblesSum(n, [3,5]);
    stdout.write('Soma dos valores divisíveis por 3 e 5 e menores que $n: $response\n');
  }
  else {
    stdout.write('Valor inválido');
  }
}