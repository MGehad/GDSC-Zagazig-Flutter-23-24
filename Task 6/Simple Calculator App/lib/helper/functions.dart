class Functions {
  double calculate(String str) {
    List<String> operators = ['+', '−', '×', '÷'];
    String operator = '';
    for (var op in operators) {
      if (str.contains(op)) {
        operator = op;
      }
    }
    if (operator.isNotEmpty) {
      List<String> numbers = str.split(operator);
      double result = double.parse(numbers[0]);
      switch (operator) {
        case '÷':
          for (int i = 1; i < numbers.length; i++) {
            result /= double.parse(numbers[i]);
          }
          return result;
        case '×':
          for (int i = 1; i < numbers.length; i++) {
            result *= double.parse(numbers[i]);
          }
          return result;
        case '−':
          for (int i = 1; i < numbers.length; i++) {
            result -= double.parse(numbers[i]);
          }
          return result;
        case '+':
          for (int i = 1; i < numbers.length; i++) {
            result += double.parse(numbers[i]);
          }
          return result;
      }
    }
    return double.parse(str);
  }
}
