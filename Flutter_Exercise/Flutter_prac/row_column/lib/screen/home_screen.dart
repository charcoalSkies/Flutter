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
            mainAxisSize: MainAxisSize.max,
            children: [
              // Expanded / Flexible (Row 나 Column 의 children에서만 사용할 수 있다!!!)
              // Expanded : 남아있는 공간을 최대한으로 Expanded 끼리 나누어 차지
              // flex : Expanded의 파라미터로 나머지 공간을 차지하는 비율(flex로 Expanded 비율 조절)

              // Flexible : 일단 컨테이너의 높이와 넓이 만큼 공간을 차지
              // 만약 child안에 있는 위젯이 그 공간을 전부 차지하지 않을 경우 남는공간을 버림
              // flex : Flexible의 파라미터로 나머지 공간을 차지하는 비율(flex로 Expanded 비율 조절)
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                flex: 3,
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
