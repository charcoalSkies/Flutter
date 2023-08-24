void main() {
  print('------- Idol --------');
  Idol apink = Idol(name: '에이핑크', membersCount: 5);
  apink.sayName();
  apink.sayMembersCount();

  print('\n\n------- BoyGroup Idol --------');
  BoyGroup bts = BoyGroup(name: 'BTS', membersCount: 7);
  bts.sayMembersCount();
  bts.sayMale();

  print('\n\n------- GirGroup Idol --------');
  GirlGroup redVelvet = GirlGroup(name: 'Red Velvet', membersCount: 5);
  redVelvet.sayFemale();
  redVelvet.sayMembersCount();

  print('\n\n------- Type Comparison --------');
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);

  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);
}

class Idol {
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print('저는 ${this.name} 입니다');
  }

  void sayMembersCount() {
    print('${this.name}은 ${this.membersCount} 명의 멤버가 있습니다.');
  }
}

class BoyGroup extends Idol {
  BoyGroup({
    required String name,
    required int membersCount,
  }) : super(name: name, membersCount: membersCount);

  void sayMale() {
    print('저는 남자 아이돌 입니다.');
  }
}

class GirlGroup extends Idol {
  GirlGroup({
    required String name,
    required int membersCount,
  }) : super(name: name, membersCount: membersCount);

  void sayFemale() {
    print('저는 여자 아이돌 입니다.');
  }
}
