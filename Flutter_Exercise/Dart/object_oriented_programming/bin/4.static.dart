void main() {
  Employee seulgi = Employee('슬기');
  Employee chorong = Employee('초롱');
  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();

  print('\n\n\n');
  Employee.building = '오투타워';
  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();

  Employee.printBuilding();
}

class Employee {
  // static 은 instance에 귀속되지 않고 class에 귀속된다
  static String? building;
  final String name;
  Employee(this.name);

  void printNameAndBuilding() {
    print('제 이름은 $name 입니다. $building 건물에서 근무하고 있습니다.');
  }

  static void printBuilding() {
    print('저는 $building 건물에서 근무중입니다');
  }
}
