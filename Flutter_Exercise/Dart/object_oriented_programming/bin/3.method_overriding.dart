void main() {
  TimesTwo tt = TimesTwo(2);
  print(tt.claclulate());

  TimesFour tf = TimesFour(2);
  print(tf.claclulate());
}

// method - function (class 내부에 있는 함수)
// override - 덮어쓰다

class TimesTwo {
  final int number;

  TimesTwo(this.number);

  //method
  int claclulate() {
    return this.number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(
    int number,
  ) : super(number);

  @override
  int claclulate() {
    super.number * 2;
    return super.claclulate() * 2;
  }
}
