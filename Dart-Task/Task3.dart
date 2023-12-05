import 'dart:async';
import 'dart:io';

class Calculator {
   double add(double a, double b) {
    return a + b;
    }

  double subtract(double a, double b) {
return a - b;
 }

  double multiply(double a, double b) {
     return a * b;
     }

  double divide(double a, double b) {
    if (b == 0) {
      throw Exception('Cannot divide by zero');
       }
       return a / b;
       }
}

void main() {
   Calculator calculator = Calculator();
   print('Enter first number: ');
   var num1 = double.parse(stdin.readLineSync()!);
   print('Enter second number: ');
   var num2 = double.parse(stdin.readLineSync()!);
   try {
    Future.delayed(Duration(seconds:5), () {
      print('Addition result: ${calculator.add(num1, num2)}');
      print('Subtraction result: ${calculator.subtract(num1, num2)}');
      print('Multiplication result: ${calculator.multiply(num1, num2)}');
      print('Division result: ${calculator.divide(num1, num2)}');
      });
      } catch (e) {
        print(e);
        }
}
