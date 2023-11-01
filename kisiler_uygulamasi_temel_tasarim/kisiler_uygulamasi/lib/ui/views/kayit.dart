import 'package:flutter/material.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({super.key});

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> kaydet(String kisi_ad, String kisi_tel) async {
    print("kişi kaydet : $kisi_ad - $kisi_tel");
  }

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
                    kaydet(tfKisiAdi.text, tfKisiTel.text);
                    setState(() {
                      tfKisiAdi.clear();
                      tfKisiTel.clear();
                    });
                  },
                  child: Text("KAYDET"))
            ],
          ),
        ),
      ),
    );
  }
}
