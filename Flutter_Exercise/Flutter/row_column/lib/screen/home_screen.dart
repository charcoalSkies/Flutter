import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              /*
              Expanded / Flexible 

              주의! Column이나 Row의 childern에만 사용가능!
              */
              // 원래 차지하는 50:50비율만 차지하고 chile안에 있는 위젯이 그 공간을 다 차지하지 못하면
              // 남는 공간은 버림
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              // Expanded - 최대한 남아있는 사이즈를 모두 차지해라
              // 여러개 쓰면 서로 나눠먹는다
              // flex - 나머지 공간을 나눠먹는 비율 (2:3:1:1)
              Expanded(
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
