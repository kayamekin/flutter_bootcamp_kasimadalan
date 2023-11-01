import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/ui/views/anasayfa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const AnaSayfa());
  }
}
