import 'package:flutter/cupertino.dart';
import 'number.dart';

///CALCULATOR
///This will direct how theuser input will be handled.
///It will format the input then pass on any symbols or
///numbers to the Number class for calculations then displays
///whatever the number class returns.
class Calculator {
  //Set up List
  var inputValues = ['0'];
  var calcValues = [];
  String display = "0";
  var doubleValue = 0.00;
  String strValue = "";
  Number number = Number();
  String prevInput = "";
  String prevSymbol = "";
  String currentSymbol = "";

  ///CALCULATE:
  ///This method controls the calculations
  void calculate(String input) {
    //If User wants to clear the calculator
    if (input == "C") {
      clear();
    } else {
      //Here we check if an input is a math symbol.  Based on the input,
      //we will convert the number to a int then start creating the next input value.
      if (isOperator(input)) {
        //Record the Symbol
        prevSymbol = currentSymbol;
        currentSymbol = input;

        if (input == "=" || (calcValues.length == 2)) {
          formatInput(inputValues);
          resetDisplay();
        } else if (prevSymbol == "=" &&
            isOperator(prevInput) == false &&
            isOperator(input) == true) {
          calcValues.remove(calcValues[0]);
          inputValues.add("0");
        }

        //Here, no matter what operator was hit, we always reset for the next value
        resetDisplay();

        // //Here we reset if an operator is hit
        // resetDisplay();
      } else {
        inputValues.add(input);
      }

      //If it is not a symbol, format th e string
      formatInput(inputValues);
    }

    //Display Screen
    if (input == "C") {
      doubleValue == 0.0;
      setDisplay(doubleValue);
    } else if (doubleValue == 0.00) {
      doubleValue = calcValues[0];
      setDisplay(doubleValue);
    } else {
      setDisplay(doubleValue);
    }

    prevInput = input;
    debugPrint("Int List: $calcValues");
    debugPrint("Str List: $inputValues");
    //}
  }

  ///FORMAT INPUT:
  ///Format input to a string and then an int.
  void formatInput(inputValues) {
    //This will concat our string list.
    strValue = formatDisplayValue(inputValues);

    //This will convert the string to an int
    doubleValue = convertToDouble(strValue);
  }

  ///CONVERT TO INTEGER:
  ///Convert our string value to an integer.
  double convertToDouble(value) {
    var numValue = double.parse(value);

    return numValue;
  }

  ///FORMAT DISPLAY VALUE:
  ///Combine the numbers in our list
  String formatDisplayValue(inputs) {
    String value1 = "";

    for (int i = 0; i < inputs.length; i++) {
      value1 = value1 + inputs[i];
    }

    return value1;
  }

  ///SET DISPLAY:
  ///Prepare Display the Calculator Screen and get it ready to display
  void setDisplay(value) {
    //print("----------------------");
    debugPrint("Your Current Screen is: $value");
    //Always round to the hundreth
    value = value.toStringAsFixed(2);
    display = "$value";
    debugPrint(display);
    //print("----------------------");
  }

  ///GET DISPLAY:
  ///Get Display for the Calculator Screen
  String getDisplay() {
    //print("----------------------");
    //debugPrint(doubleValue.toString());
    return display;
    //print("----------------------");
  }

  ///RESET DISPLAY:
  /// Reset Display on the Calculator Screen
  void resetDisplay() {
    //Add Current value to Int Value List
    if (inputValues.length >= 2) {
      calcValues.add(doubleValue);
      doubleValue = calcValues[0];
      // print('RESET calc Values: $calcValues');
    }

    //print("reset");
    // print(calcValues.length);
    if (calcValues.length == 2) {
      //Call Number to do Calc
      calcValues[0] = number.compute(prevSymbol, calcValues);
      calcValues.removeLast();
      doubleValue = calcValues[0];
      //print('intValue: $doubleValue');
    }

    // print('Before Str Values: $inputValues');
    //Reset String Value List
    inputValues.removeRange(0, inputValues.length);
    inputValues.add("0");
    doubleValue = calcValues[0];

    //print("OUTPUT: $doubleValue");
  }

  /// Clear:
  /// Clear Everything
  void clear() {
    calcValues.removeRange(0, calcValues.length);
    //print("CLEAR CALC");

    inputValues.removeRange(0, inputValues.length);
    inputValues.add("0");
    //print("CLEAR INPUT");

    //Reset the Values
    doubleValue = 0.00;
    prevSymbol = "";
    currentSymbol = "";
    prevInput = "";
  }

  bool isOperator(input) {
    if (input == "+" ||
        input == "-" ||
        input == "*" ||
        input == "/" ||
        input == "=")
      return true;
    else
      return false;
  }
}
