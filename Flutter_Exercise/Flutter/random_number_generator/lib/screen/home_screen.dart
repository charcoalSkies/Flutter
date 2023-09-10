import 'package:flutter/material.dart';
import 'package:random_number_generator/constant/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          // 좌 우 위 아래 전부 같은 픽셀 크기로 패딩 들어감
          // padding: EdgeInsets.all(20.0),

          // 좌 우 위 아래 각각 다른 크기로 패딩 줄 수 있음
          // padding: EdgeInsets.fromLTRB(
          //   left,
          //   top,
          //   right,
          //   bottom,
          // ),

          // named parameter로 각각 패딩 줄 수 있음
          // padding: EdgeInsets.only(
          //   top: 16.0,
          //   bottom: 16.0,
          //   left: 4.0,
          //   right: 2.0,
          // ),

          // 대칭으로 패딩을 줄 수 있음
          // horizontal : 좌, 우
          // vertical: 위, 아래
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '랜덤숫자 생성기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: RED_COLOR,
                    ),
                  ),
                ],
              ),
              Expanded(
                // 여기에 sizedBox 써도됨
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '123',
                    ),
                    Text(
                      '456',
                    ),
                    Text(
                      '789',
                    ),
                  ],
                ),
              ),

              // 방법 1 을 사용하는 이유는 왜 이걸 썼는지 뉘양스를 풍기기 위해 사용(협업 또는 나중의 나를 위해)
              SizedBox(
                width: double.infinity, // 버큰 넓이 늘어남 (무한대로 해도 넘어가진 않음)
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: RED_COLOR,
                  ),
                  onPressed: () {},
                  child: Text(
                    '생성하기!',
                  ),
                ),
              ),

              // 방법 2
              // Row(
              //   children: [
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () {},
              //         child: Text('생성하기!'),
              //       ),
              //     ),
              //   ],
              // ),

              // 방법 3
              // Container(
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     child: Text('생성하기!'),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
