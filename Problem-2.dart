void generateOddSeries(int a) {
  if (a <= 0) {
    print("Input must be a positive integer.");
    return;
  }
  int currentOdd = 1;
  String output = '';
  for (int i = 0; i < a; i++) {
    output += currentOdd.toString();
    if (i < a - 1) {
      output += ',';
    }
    currentOdd += 2;
  }
  print('Input a=$a,then output:$output');
}

void main() {
  generateOddSeries(1);
  generateOddSeries(2);
  generateOddSeries(3);
  generateOddSeries(4);
  generateOddSeries(5);
}
