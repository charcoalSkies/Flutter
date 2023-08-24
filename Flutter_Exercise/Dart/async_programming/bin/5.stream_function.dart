import 'dart:async';

void main() {
  // calculate(1)과 calculate(4)가 동시에 실행
  calculate(number: 2).listen((event) {
    print('calculate(1): $event');
  });

  calculate(number: 4).listen((event) {
    print('calculate(4): $event');
  });
}

// Stream 반환은 async*을 사용
Stream<int> calculate({required int number}) async* {
  for (int i = 0; i < 5; i++) {
    // yield 가 실행될 때 마다 calculate 함수를 listening 하고 있는 listner에게 값을 넘겨줄 수 있음
    yield i * number;

    await Future.delayed(Duration(seconds: 1)); // 1초 대기
  }
}
