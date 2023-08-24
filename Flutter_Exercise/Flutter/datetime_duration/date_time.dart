void main() {
  // 어떤 특정 날짜
  DateTime now = DateTime.now();
  print(now); // 연도 + 월 + 일 + 시간 + 분 + 초 + 밀리초
  print(now.year); // 연도
  print(now.month); // 월
  print(now.day); // 일
  print(now.hour); // 시간
  print(now.minute); // 분
  print(now.second); // 초
  print(now.millisecond); // 밀리초
  print(now.microsecond);

  // 기간 (어느 날짜 ~ 어느 날짜)
  Duration duration = Duration(seconds: 60);
  print(duration); // 0:01:00.000000 (1분)
  print(duration.inDays); // 날짜로 계산 (0)
  print(duration.inHours); // 시간으로 계산 (0)
  print(duration.inMinutes); // 분으로 계산 (1)
  print(duration.inSeconds); // 초로 계산 (60)
  print(duration.inMilliseconds); // 밀리초로 계산 (60000)

  // 특정 날짜 선택 (연도는 필수 나머지는 옵션)
  DateTime specificDay = DateTime(
    2017,
    11,
    23,
  );
  print(specificDay); // 2017-11-23 00:00:00.000 (시간은 지정하지 않았기 떄문에 0)

  // 기간 구하기 difference는 Duration으로 반환
  final difference = now.difference(specificDay);
  print(difference); //(50397:58:52.196822) 50397시간 58분 52초
  print(difference.inDays); //(2099) 차이를 날짜로 받기
  print(difference.inHours); //(50398) 차이를 시간으로 받기

  // 현재 날짜가 specificDay 보다 미래인지
  print(now.isAfter(specificDay)); // (true)

  // 현재 날짜가 specificDay 보다 과거인지
  print(now.isBefore(specificDay)); // (false)

  //
  print('---------------------');
  print(now);
  print(now.add(Duration(hours: 10))); // 현재 시간에서 10시간 후의 시간 출력
  print(now.subtract(Duration(seconds: 20))); // 현재 시간에서 20초 전의 시간 출력
}
