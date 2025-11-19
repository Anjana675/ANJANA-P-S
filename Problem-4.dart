Map<int, int> countMultiples(List<int> inputList) {
  List<int> divisors = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  Map<int, int> result = {};
  for (int divisor in divisors) {
    int count = 0;
    for (int number in inputList) {
      if (number % divisor == 0) {
        count++;
      }
    }
    result[divisor] = count;
  }
  return result;
}

void main() {
  List<int> input = [1, 2, 8, 9, 12, 46, 76, 82, 15, 20, 30];
  Map<int, int> output = countMultiples(input);
  print('Input:$input');
  print('output:$output');
}
