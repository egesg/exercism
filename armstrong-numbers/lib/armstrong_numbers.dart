import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    final intDigits = number.split('').map(int.parse).toList();
    final int numDigits = intDigits.length;
    final int sum = intDigits.fold(0, (acc, digit) => acc + pow(digit, numDigits).toInt());

    return int.parse(number) == sum;
  }
}

void main() {
  ArmstrongNumbers();
}
