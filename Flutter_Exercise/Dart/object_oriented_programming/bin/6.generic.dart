void main() {
  Lecture<String, String> lecture1 = Lecture('123', 'lecture1');
  lecture1.printIdType();

  Lecture<int, String> lecture2 = Lecture(123, 'lecture2');
  lecture2.printIdType();
}

// generic - 타입을 외부에서 받을 때 사용
class Lecture<T, T2> {
  final T id;
  final T2 name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}
