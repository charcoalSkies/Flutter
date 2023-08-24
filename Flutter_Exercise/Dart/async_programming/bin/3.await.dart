void main() async {
  // Future : 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  final result1 = await addNumbers(
      number1: 1, number2: 1); //await 때문에 이 함수가 끝나기 전까지 아래 함수가 실행되지 않음
  //await를 없애면 아래 함수 바로 실행

  final result2 = await addNumbers(number1: 2, number2: 2);
  final result3 = addNumbers(number1: 3, number2: 3);
  print('result3');
  final result4 = addNumbers(number1: 4, number2: 4);
  print('result4');
  final result5 = addNumbers(number1: 5, number2: 5);
  print('result5');

  print('result1: $result1');
  print('result2: $result2');
  print('result1 + result2 = ${result1 + result2}');
}

// async는 Future를 return하는 함수에만 사용할 수 있다.
Future<int> addNumbers({required int number1, required int number2}) async {
  print('계산시작: $number1 + $number2');

  // 서버 시뮬레이션
  // awiat를 사용하면 이 구간이 끝나기 전까지 아래 구간으로 내려가지 않음 (순서대로 실행됨)
  await Future.delayed(Duration(seconds: 2), () {
    print('계산완료: $number1 + $number2 = ${number1 + number2}');
  });

  print('함수완료: $number1 + $number2');

  return number1 + number2;
}
