void generateConditionalOddSeries(int a) {
  if (a <= 0) {
    print("Input must be a positive integer.");
    return;
  }

  int numberOfTerms;
  if (a % 2 != 0) {
    numberOfTerms = a;
  } else {
    numberOfTerms = a - 1;
  }

  if (numberOfTerms <= 0) {
    numberOfTerms = 1;
  }

  int currentOdd = 1;
  String output = '';

  for (int i = 0; i < numberOfTerms; i++) {
    output += currentOdd.toString();

    if (i < numberOfTerms - 1) {
      output += ', ';
    }

    currentOdd += 2;
  }

  print('Input a = $a, then output: $output');
}

void main() {
  generateConditionalOddSeries(1);
  generateConditionalOddSeries(2);
  generateConditionalOddSeries(3);
  generateConditionalOddSeries(4);
  generateConditionalOddSeries(5);
  generateConditionalOddSeries(6);
}
