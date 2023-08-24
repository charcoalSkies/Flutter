import 'package:flutter/material.dart';
import 'package:web_view_4version/screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
