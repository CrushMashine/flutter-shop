import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Shop',
      theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
          primarySwatch: Colors.blue,
          fontFamily: "Gordita",
          textTheme: const TextTheme(
            bodyText2: TextStyle(color: Colors.black54),
          )),
      home: const HomeScreen(),
    );
  }
}
