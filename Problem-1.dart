class Calculator {
  double calculate(double a, double b, String operation) {
    switch (operation.toLowerCase()) {
      case 'addition':
        return a + b;
      case 'substraction':
        return a - b;
      case 'multiplication':
        return a * b;
      case 'division':
        if (b != 0) {
          return a / b;
        } else {
          throw ArgumentError("Error:Cannot divide by zero.");
        }
      default:
        throw ArgumentError(
          "Error:Invalid operation type.Must be addition,substraction,multiplication, or division",
        );
    }
  }
}

void main() {
  var calculator = Calculator();
  try {
    double resultAdd = calculator.calculate(10.5, 5.2, 'addition');
    print('10.5+5.2(addition)=$resultAdd');
  } catch (e) {
    print(e);
  }
  try {
    double resultMult = calculator.calculate(7.0, 3.0, 'Multiplication');
    print('7.0*3.0(Multiplication)=$resultMult');
  } catch (e) {
    print(e);
  }
  try {
    double resultDiv = calculator.calculate(10.0, 4.0, 'division');
    print('10.0/4.0(division)=$resultDiv');
  } catch (e) {
    print(e);
  }
}
