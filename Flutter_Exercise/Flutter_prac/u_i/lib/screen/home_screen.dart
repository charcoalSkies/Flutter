import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime seletedDate = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.pink[100],
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _TopPart(),
              _BottomPart(),
            ],
          ),
        ),
      ),
    );
  }

  void onHeartPressed() {
    final DateTime now = DateTime.now();

    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 300.0,
            color: Colors.white,
            child: CupertinoDatePicker(
              initialDateTime: seletedDate,
              maximumDate: DateTime(
                now.year,
                now.month,
                now.day,
              ),
              onDateTimeChanged: (DateTime date) {
                setState(() {
                  seletedDate = date;
                });
              },
            ),
          ),
        );
      },
    );
  }
}

class _TopPart extends StatelessWidget {
  const _TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'U & I',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'parisienne',
              fontSize: 80.0,
            ),
          ),
          Text(
            '우리 처음 만난날',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'sunflower',
              fontSize: 30.0,
            ),
          ),
          Text(
            '2023.09.24',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'sunflower',
              fontSize: 20.0,
            ),
          ),
          IconButton(
            iconSize: 60.0,
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          Text(
            'D + 1',
            style: TextStyle(
              fontFamily: 'sunflower',
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'asset/img/middle_image.png',
      ),
    );
  }
}
