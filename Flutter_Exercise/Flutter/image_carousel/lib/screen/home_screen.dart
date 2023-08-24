import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      // print('Timer!');
      // page가 double인 이유는 페이지가 넘어가면서 0.1, 0.2, 0.3, ... ,1 이런식으로 넘어간다
      int currentPage = controller.page!.toInt();
      int nextPage = currentPage + 1;
      if (nextPage > 4) {
        nextPage = 0;
      }

      controller.animateToPage(
        nextPage,
        duration: Duration(milliseconds: 400),
        curve: Curves.linear,
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();
    if (timer != null) {
      timer!.cancel();
    }
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // system 상태바 색상 변경
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: PageView(
        controller: controller,
        children: [1, 2, 3, 4, 5]
            .map(
              (e) => Image.asset(
                'asset/img/image_$e.jpeg',
                fit: BoxFit.cover,
              ),
            )
            .toList(),
      ),
    );
  }
}
