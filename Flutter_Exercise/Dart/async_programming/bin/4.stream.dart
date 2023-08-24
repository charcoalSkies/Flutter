import 'dart:async';

void main() {
  final controller = StreamController();
  //asBroadcastStream를 써줘야 여러개 stream을 listen할 수 있음
  // 안쓰면 1개 stream만 listen 가능
  final stream = controller.stream.asBroadcastStream();

  final streamListener1 = stream.where((val) => val % 2 == 0).listen((val) {
    print('Listener 1 : $val');
  });

  final streamListener2 = stream.where((val) => val % 2 == 1).listen((event) {
    print('Listener 2 : $event');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
