// 기본 class 생성

class Idol {
  final String name;
  final List<String> members;

  // 생성자에 const를 붙이면 생성시 const 사용 가능 !!!기본 생성자 아님
  const Idol(this.name, this.members);

  // Idol.fromList(List<dynamic> values)
  Idol.fromList(List values)
      : members = values[0],
        name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}

void main() {}
