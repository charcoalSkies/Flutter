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
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextWidget(
              label: 'test1',
            ),
            TextWidget(
              label: 'test2',
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text('빌드!'),
            )
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String label;

  const TextWidget({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('$label build 실행');
    return Text(
      label,
    );
  }
}
