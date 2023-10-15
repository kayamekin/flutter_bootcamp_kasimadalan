import 'package:flutter/material.dart';
import 'package:odev_4/pages/anasayfa.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true, appBarTheme: const AppBarTheme(centerTitle: true)),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const AnaSayfa(),
    );
  }
}
