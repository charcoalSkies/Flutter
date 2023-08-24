void main() {
  // Future : 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  // print('함수 시작');

  // 2개의 파라미터
  // delayed
  // 1p - 지연할 기간(얼마나 지연할건지) Duration
  // 2p - 지연시간이 지난 후 실행할 함수
  Future.delayed(Duration(seconds: 1), () {
    print('delay 끝');
  });

  addNumbers(number1: 1, number2: 1); // 계산시작 -> 함수완료
  addNumbers(number1: 2, number2: 2); // 계산 시작 -> 함수완료
  // 계산완료: 1 + 1 = 2
  // 계산완료: 2 + 2 = 4
}

void addNumbers({required int number1, required int number2}) {
  print('계산 시작: $number1 + $number2');

  // 서버 시뮬레이션
  Future.delayed(Duration(seconds: 2), () {
    print('계산완료: $number1 + $number2 = ${number1 + number2}');
  });

  // 이게 계산 완료보다 먼저 실행됨
  print('함수완료: $number1 + $number2');
}
