import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('랜덤 숫자 생성기'),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                  ),
                ),
              ],
            ),
            Expanded(
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
                onPressed: () {},
                child: Text('생성하기!'),
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
    );
  }
}
