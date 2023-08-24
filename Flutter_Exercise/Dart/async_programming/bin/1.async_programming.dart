void main() {
  addNumber(number1: 1, number2: 1);
  addNumber(number1: 2, number2: 2);
}

// 1 + 1 = 2
// 2 + 2 = 4

void addNumber({required int number1, required int number2}) {
  print('계산중: $number1 + $number2');
  print('계산 완료: ${number1 + number2}');
}
