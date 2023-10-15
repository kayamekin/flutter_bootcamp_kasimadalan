import 'package:flutter/material.dart';
import 'package:odev_4/pages/y_page.dart';

class BPage extends StatelessWidget {
  const BPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("B page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => YPage()));
          },
          child: const Text("Y SAYFASINA GİT"),
        ),
      ),
    );
  }
}
