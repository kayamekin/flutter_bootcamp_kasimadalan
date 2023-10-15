import 'package:flutter/material.dart';
import 'package:odev_4/pages/b_page.dart';

class APage extends StatelessWidget {
  const APage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("A page")),
      body: Center(child: ElevatedButton(
        onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BPage()));
        },
        child: const Text("B SAYFASINA GİT"),
      ),),
    );
  }
}
