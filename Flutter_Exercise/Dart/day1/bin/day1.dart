enum Status {
  approved,
  pending,
  rejected,
}

void main() {
  // variable
  var name = 'code';
  print(name);

  name = 'decode';
  print(name);

  // 같은 스코프 안에선 같은 이름의 변수 생성 불가능
  // var name = 'encode';

  // 수
  int number1 = 10;
  double number2 = 10.23846;
  print(number1 * number2);

  // bool
  bool isTrue = true;
  bool isFalse = false;

  print(isTrue);
  print(isFalse);

  // string
  String str = '뉴진스';
  print(str);

  // var String
  var name3 = '블랙핑크';
  print(name3.runtimeType);

  print('${name.runtimeType} $name3');

  dynamic dynamic_str = '코드';
  dynamic_str = 2;
  print(dynamic_str);

  ////////////////////////////////////////////////////////////////////////////

  // nullable     - null 가능
  // non-nullable - null 불가능
  String? name_null = 'null available';
  print(name_null);
  name_null = null;
  print(name_null);
  ////////////////////////////////////////////////////////////////////////////

  // final && const

  // 둘 다 타입 생략 가능
  final name_final = 'final 이란 빌드타임 시 값을 몰라도 됨';
  print(name_final);

  const name_const = 'const 란 빌드타임 시 값이 존재 하고 있어야 함';
  print(name_const);

  final DateTime now = DateTime.now();
  print(now);

  // 실행 안됨
  // const DateTime now2 = DateTime.now();

  //////////////////////////////////////////////////////
  // null 조건 operator
  double? number = 4.0;
  print(number);
  number = null;
  print(number);

  number ??= 3.0; // number가 null이면 3, 아니면 원래값
  print(number);

  ///////////////////////////////////////////////////////
  int isnumber = 1;

  print(isnumber is int);
  print(isnumber is String);
  print(isnumber is! int);
  print(isnumber is! String);

  ///////////////////////////////////////////////////////
  //List
  List<String> blackpink = ['제니', '지수', '로제', '리사'];
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  print(blackpink);
  print(numbers);

  //index
  print(blackpink[1]);

  print(blackpink.length);

  blackpink.add('someone');
  print(blackpink);

  blackpink.remove('someone');
  print(blackpink);

  print(blackpink.indexOf('지수'));
  ///////////////////////////////////////////////////////
  //Map <key, value>

  Map<String, String> dict = {
    'Harry Potter': '해리포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저',
  };

  print(dict);

  Map<String, bool> isHarryPotter = {
    'Harry Potter': true,
    'Ron Weasley': true,
    'Iornman': false,
  };

  print(isHarryPotter);

  isHarryPotter.addAll({
    'Spiderman': false,
  });
  print(isHarryPotter);

  print(isHarryPotter['Ironman']);

  isHarryPotter['Hulk'] = false;
  print(isHarryPotter);

  isHarryPotter['Spiderman'] = true;
  print(isHarryPotter);

  isHarryPotter.remove('Harry Potter');
  print(isHarryPotter);
  print(isHarryPotter.keys);
  print(isHarryPotter.values);

  ////////////////////////////////////////////////////////////////////////////////////////////////
  // Set : 리스트와 차이는 중복 불가능
  final Set<String> names = {'Code Factory', 'Flutter', 'BlackPink', 'Flutter'};
  print(names);

  names.add('Jenny');
  print(names);
  names.remove('Jenny');
  print(names);
  print(names.contains('Flutter'));

  //////////////////////////////////////////////////////////////////////
  // if문
  int number_if = 3;

  if (number_if % 3 == 0) {
    print('나머지가 0입니다.');
  } else if (number_if % 3 == 1) {
    print('나머지가 1입니다.');
  } else {
    print('나머지가 2입니다.');
  }

  //////////////////////////////////////////////////////////////////////
  // switch문

  int number_switch = 5;
  switch (number_switch % 3) {
    case 0:
      print('나머지는 0');
      break;

    case 1:
      print('나머지가 1');
      break;

    default:
      print('나머지가 2');
      break;
  }

  ////////////////////////////////////////////////////////////
  // loop
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  List<int> numbers_list = [1, 2, 3, 4, 5, 6];
  for (int number in numbers_list) {
    print(number);
  }

  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }

  while (true) {
    print('im in while');
    break;
  }

  int total = 0;
  do {
    total += 1;
  } while (total < 10);
  print(total);

  //////////////////////////////////////////////////////////////////
  // enum
  Status status = Status.pending;
  if (status == Status.approved) {
    print('승인');
  } else if (status == Status.pending) {
    print('대기');
  } else {
    print('거절');
  }

  addNumbers(1, 2);
  int sum = addNumbers2(x: 1, z: 2, y: 3);
  print(sum);

  print(addNumbers3(10, y: 2));

  Operation operation = add;
  int result = operation(10, 20, 30);
  print(result);

  operation = subtract;
  result = operation(10, 20, 30);
  print(result);

  int result3 = calculate(30, 40, 50, add);
  print(result3);
}

// typedef
typedef Operation = int Function(int x, int y, int z);

//더하기
int add(int x, int y, int z) => x + y + z;

// 뺴기
int subtract(int x, int y, int z) => x - y - z;

// 계산
int calculate(int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}

// arrow function
int addNumbers3(int x, {required int y, int z = 0}) => x + y + z;

// named parameter - 이름이 있는 파라미터 (순서 중요x)
addNumbers2({required int x, int y = 30, required int z}) {
  int sum = x + y + z;
  print('result $sum');
  return sum;
}

// 세개의 숫자 (x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
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
