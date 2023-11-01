import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/ui/cubit/kayit_cubit.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({super.key});

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tfKisiAdi,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Kişi Adı",
                ),
              ),
              TextField(
                controller: tfKisiTel,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Kişi Telefon",
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<KayitCubit>().kaydet(tfKisiAdi.text, tfKisiTel.text);
                  },
                  child: const Text("KAYDET"))
            ],
          ),
        ),
      ),
    );
  }
}
