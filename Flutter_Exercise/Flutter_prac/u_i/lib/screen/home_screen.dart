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
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        bottom: false,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _TopPart(
                seletedDate: seletedDate,
                onPressed: onHeartPressed,
              ),
              _BottomPart(),
            ],
          ),
        ),
      ),
    );
  }

  void onHeartPressed() {
    DateTime now = DateTime.now();
    showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 300.0,
              color: Colors.white,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: seletedDate,
                maximumDate: DateTime(
                  now.year,
                  now.month,
                  now.day,
                ),
                onDateTimeChanged: (DateTime date) {
                  // print(date);
                  seletedDate = date;
                  print(seletedDate);
                },
              ),
            ),
          );
        });
  }
}

class _TopPart extends StatelessWidget {
  final DateTime seletedDate;
  final VoidCallback onPressed;

  _TopPart({
    required this.seletedDate,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'U & I',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80.0,
              fontFamily: 'parisienne',
            ),
          ),
          Column(
            children: [
              Text(
                '우리 처음 만난날',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'sunflower',
                ),
              ),
              Text(
                '2023.08.24',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'sunflower',
                ),
              ),
            ],
          ),
          IconButton(
            iconSize: 60.0,
            onPressed: onPressed,
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          Text(
            'D + 1',
            style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontFamily: 'sunflower',
                fontWeight: FontWeight.w700),
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
