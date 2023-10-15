import 'package:flutter/material.dart';

class YPage extends StatelessWidget {
  const YPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("y page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child:const Text("ANA SAYFAYA GİT"),
        ),
      ),
    );
  }
}
