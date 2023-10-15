import 'package:flutter/material.dart';
import 'package:odev_4/pages/a_page.dart';
import 'package:odev_4/pages/x_page.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ana sayfa")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => APage()));
              },
              child: const Text("A SAYFASINA GİT"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => XPage()));
              },
              child: const Text("X SAYFASINA GİT"),
            ),
          ],
        ),
      ),
    );
  }
}
