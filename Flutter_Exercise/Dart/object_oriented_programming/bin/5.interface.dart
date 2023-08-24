import '1.object_oriented_programming.dart';

void main() {
  BoyGroup bts = new BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('레드벨벳');

  bts.sayName();
  redVelvet.sayName();
}

// interface
abstract class IdolInterface {
  final String name;

  IdolInterface(this.name);

  void sayName();
}

class BoyGroup implements IdolInterface {
  final String name;

  BoyGroup(this.name);

  void sayName() {
    print('제 이름은 $name 입니다.');
  }
}

class GirlGroup implements IdolInterface {
  final String name;
  GirlGroup(this.name);

  void sayName() {
    print('제 이름은 $name 입니다.');
  }
}
