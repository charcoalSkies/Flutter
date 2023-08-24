// 타입 확인
void typeVarify() {
  var name = '뉴진스';
  print('${name.runtimeType} $name');
  // String 뉴진스
}

/*


*/

// Nullable
void nullable() {
  String? nullable = null;
  print('${nullable.runtimeType} $nullable');
  // Null null
}

/*


*/

// Final && Const: 한번 값이 할당되면 값을 바꿀 수 없다 하지만...
void finalConst() {
  final nameFinal = 'final이란 빌드 타임 시 값을 몰라도 된다';
  print(nameFinal);

  const nameConst = 'const란 빌드 타임 시 반드시 값이 존재하고 있어야 한다.';
  print(nameConst);

  final DateTime now = DateTime.now();
  print(now);
  // 2023-06-27 17:01:53.164763

  // 실행 안됨
  // const DateTime now2 = DateTime.now();
}

/*


*/

// Null 조건 Operator
void nullOperator() {
  // ? operator는 null을 가질 수 있다는 의미
  double? number = 4.0;
  print(number);
  number = null;
  print(number);

  number ??= 3.0; // number가 null 이면 3, 아니면 원래 값
  print(number); // 3.0
}

/*


*/

// List
void list() {
  List<String> blackpink = ['제니', '지수', '로제', '리사'];
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  // 데이터 추가
  blackpink.add('someone');
  print(blackpink); // [제니, 지수, 로제, 리사, someone]

  // 데이터 제거
  blackpink.remove('someone');
  print(blackpink); // [제니, 지수, 로제, 리사]

  // 데이터 인덱스 위치 찾기
  print(blackpink.indexOf('지수')); // 1

  print(numbers);
}

/*


*/

// Map<key, value>
void map() {
  Map<String, bool> isHarryPotter = {
    'Harry Potter': true,
    'Ron Weasley': true,
    'Iornman': false,
  };

  // 데이터 한개 추가
  isHarryPotter['Hulk'] = false;

  // 데이터 여러개 추가
  isHarryPotter.addAll({
    'Spiderman': false,
  });

  // 특정 key의 value 확인
  print(isHarryPotter['Iornman']); // false

  // 데이터 제거
  isHarryPotter.remove('Harry Potter');

  // key만 추출(LinkedHashMapKeyIterable)
  print(isHarryPotter.keys); // (Ron Weasley, Iornman, Hulk, Spiderman)

  // value만 추출
  print(isHarryPotter.values); // (true, false, false, false))
}

/*


*/

// Set: 리스트와 차이는 중복 불가능
void set() {
  final Set<String> names = {'code Factory', 'Flutter', 'BlackPink', 'Flutter'};
  print(names); // {code Factory, Flutter, BlackPink}

  // 데이터 추가
  names.add('C#');
  print(names); // {code Factory, Flutter, BlackPink, C#}

  // 데이터 제거
  names.remove('C#');
  print(names); // {code Factory, Flutter, BlackPink}

  // 데이터 존재 유무 확인
  print(names.contains('Flutter')); // true
}

/*


*/

// loop 중 for in 문 : 파이썬과 사용법 같음
void loop() {
  List<int> numberList = [1, 2, 3, 4, 5, 6];

  for (int number in numberList) {
    print(number);
  }
}

/*


*/

// enum
enum Status { approved, pending, rejected }

void enumOperater() {
  Status status = Status.pending;

  if (status == Status.approved) {
    print('승인');
  } else if (status == Status.pending) {
    print('대기');
  } else {
    print('거절');
  }
}

/*


*/

// basic function (선택적 매개변수)
void basicFunction() {
  addNumbers(1, 2);
}

// [ ] 내부에 있는 변수들은 선택적 매개변수로, 안넣게 되면 초기값으로 자동 설정
void addNumbers(int x, [int y = 0, int z = 0, int? t = null]) {
  print('addNumbers 실행');

  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0)
    print('짝수');
  else
    print('홀수');
}

/*


*/

// basic function(named parameter)
void basicFunctionNamedParameter() {
  addNumbers2(x: 10, z: 10, y: 10);
  addNumbers2(x: 10, z: 10);
}

/*


*/

// named parameter - 이름이 있는 파라미터 (순서 중요 x)
addNumbers2({required int x, int y = 30, required int z}) {
  // y에 초기값을 설정하면 required 설정할 필요가 없다
  int sum = x + y + z;
  print('result: $sum');
  return sum;
}

/*


*/

// basic function(arrow function)
void basicFunctionArrowFunction() {
  print(addNumbers3(10, y: 2));
}

int addNumbers3(int x, {required int y, int z = 0}) => x + y + z;

/*


*/

// typedef
typedef Operation = int Function(int x, int y, int z);

// 더하기
int add(int x, int y, int z) => x + y + z;

// 빼기
int subtract(int x, int y, int z) => x - y - z;

// 계산
int calculate(int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}

void main() {
  int result = calculate(30, 40, 50, add);
  print(result);
}
