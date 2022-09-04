import 'package:custom_card_widget/core/utility/constants.dart';
import 'package:flutter/material.dart';
import 'core/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Card Widget',
      theme:
          ThemeData(appBarTheme: const AppBarTheme(backgroundColor: colorPink)),
      home: const HomeView(),
    );
  }
}
