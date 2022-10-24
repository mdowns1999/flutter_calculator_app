///NUMBER
///This will simply figure out what kind of calculations need to be done,
///do the calculation, then return the value.
class Number {
  double total = 0;

  ///ADDITION:
  ///Adds values
  void addition(calcValues) {
    total = calcValues[0] + calcValues[1];
  }

  /// Subtract:
  /// Subtract values
  void subtract(calcValues) {
    total = calcValues[0] - calcValues[1];
  }

  /// Multiply: Multiply valuesj
  /// Multiply values
  void multiply(calcValues) {
    total = calcValues[0] * calcValues[1];
  }

  ///Divide:
  /// Divide values
  void divide(calcValues) {
    total = calcValues[0] / calcValues[1];
  }

  ///COMPUTE:
  ///This method figures out what math it needs to do.
  ///This is done by the symbol.
  double compute(symbol, calcValues) {
    switch (symbol) {
      case "+":
        {
          addition(calcValues);
          break;
        }

      case "-":
        {
          subtract(calcValues);
          break;
        }
      case "*":
        {
          multiply(calcValues);
          break;
        }
      case "/":
        {
          divide(calcValues);
          break;
        }
    }

    return total;
  }
}
