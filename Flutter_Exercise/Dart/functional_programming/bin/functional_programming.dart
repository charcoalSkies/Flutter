void main() {
  List<String> blackpink = ['로제', '지수', '지수', '리사', '제니'];
  print(blackpink);
  print(blackpink.asMap());
  print(blackpink.toSet());

  Map blackpinkMap = blackpink.asMap();
  print(blackpinkMap.keys.toList());
  print(blackpinkMap.values.toList());

  Set blackPinkSet = Set.from(blackpink);
  print(blackPinkSet.toList());

  /*
  ----------- map -----------
  */
  final newBlackPink = blackpink.map((x) {
    return '블랙핑크 $x';
  });
  print(blackpink);
  print(newBlackPink.toList());

  final newBlackPink2 = blackpink.map((x) => '블랙핑크 $x');
  print(newBlackPink2.toList());

  print(newBlackPink == newBlackPink2);

  // [1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]
  String number = '13579';
  final parsed = number.split('').map((x) => '$x.jpg').toList();
  print(parsed);

  Map<String, String> harryPotter = {
    'Harry Potter': '해리 포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저'
  };

  final result = harryPotter.map((key, value) =>
      MapEntry('Harry Potter Character $key', '해리포터 캐릭터 $value'));
  print(result);

  final keys = harryPotter.keys.map((x) => 'HPC $x').toList();
  final values = harryPotter.values.map((x) => '해리포터 $x').toList();
  print(keys);
  print(values);

  blackPinkSet = {'로제', '지수', '제니', '리사'};
  final newSet = blackPinkSet.map((x) => '블랙핑크 $x').toSet();
  print(newSet);

  /*
  -----------where-----------
  */
  List<Map<String, String>> people = [
    {
      'name': '로제',
      'group': '블랙핑크',
    },
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': 'RM',
      'group': 'BTS',
    },
    {
      'name': '뷔',
      'group': 'BTS',
    }
  ];

  print('\n\n\n $people');

  final blackPink = people.where((x) => x['group'] == '블랙핑크').toList();
  final bts = people.where((x) => x['group'] == 'BTS').toList();
  print(blackPink);
  print(bts);

  print('\n\n\n');

  /*
  -----------reduce-----------
  */
  List<int> numbers = [1, 3, 5, 7, 9];
  final result2 = numbers.reduce((prev, next) {
    print('-----------');
    print('previous: $prev');
    print('next: $next');
    print('total: ${prev + next}');
    return prev + next;
  });
  print(result2);

  List<String> words = ['안녕하세요 ', '저는 ', '이준희입니다.'];

  final sentence = words.reduce((prev, next) => prev + next);
  print(sentence);

  // String 반환이 아니라 안됨 리스트 멤버들의 타입과 같아야함
  // words.reduce((prev, next) => prev.length + next.length);
  print('\n\n\n');
  /*
  ----------- fold -----------
  */

  List<int> numbers2 = [1, 3, 5, 7, 9];
  final sum = numbers2.fold<int>(0, (prev, next) {
    print('-------------');
    print('prev : $prev');
    print('next : $next');
    print('total : ${prev + next}');
    return prev + next;
  });

  print(sum);

  List<String> words2 = ['안녕하세요 ', '저는 ', '이준희 입니다.'];
  final sentence2 = words2.fold<String>('', (prev, next) => prev + next);
  print(sentence2);

  final count = words2.fold<int>(0, (prev, next) => prev + next.length);
  print(count);
  print('\n\n\n');

  /*
  ----------- cascading operator -----------
  */
  List<int> even = [2, 4, 6, 8];

  List<int> odd = [1, 3, 5, 7];

  //cascading operator
  //...
  print([even, odd]);
  print([...even, ...odd]);

  print([even] == [...even]);
}
