import 'dart:async';

void main() {
  playAllStream().listen((event) {
    print(event);
  });
}

// Stream에서 await와 비슷한 기능
Stream<int> playAllStream() async* {
  // yield* : 해당 스트림의 모든 값을 다 가져올 때 까지 대기
  yield* calculate(number: 1); // 값이 다 리턴 될 때 까지 다음줄로 넘어가지 않음
  yield* calculate(number: 1000);
}

Stream<int> calculate({required int number}) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}
