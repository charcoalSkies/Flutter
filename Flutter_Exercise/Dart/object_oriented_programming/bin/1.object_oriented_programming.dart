void main() {
  Idol blackpink = const Idol("블랙핑크", ['지수', '제니', '리사', '로제']);
  print(blackpink.name);
  print(blackpink.members);
  blackpink.sayHello();
  blackpink.introduce();

  Idol bts = Idol.fromList([
    ['RM', '진', '슈가', '지민', '뷔', '정국'],
    'BTS',
  ]);
  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();

  /*
  ------------------------------------------------------------------------------
  */
  _Idol_get_set blackpink_get_set =
      _Idol_get_set("블랙핑크", ['지수', '제니', '리사', '로제']);
  print('\n\n\n\n${blackpink_get_set.firstMember}');

  blackpink_get_set.firstMember = 'Someone';
  print(blackpink_get_set.firstMember);
}

// Idol class
// name - var
// members - var
// sayHello - func
// inytoduce - func
class Idol {
  final String name;
  final List<String> members;

  // Idol(String name, List<String> members)
  //     : this.name = name,
  //       this.members = members;

  const Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}

// _를 붙이면
class _Idol_get_set {
  String name;
  List<String> members;

  // Idol(String name, List<String> members)
  //     : this.name = name,
  //       this.members = members;

  _Idol_get_set(this.name, this.members);

  _Idol_get_set.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }

  //getter
  String get firstMember {
    return this.members[0];
  }

  //setter
  set firstMember(String name) {
    this.members[0] = name;
  }
}
