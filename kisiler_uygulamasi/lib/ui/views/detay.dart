import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';

// ignore: must_be_immutable
class DetaySayfa extends StatefulWidget {
  Kisiler kisi;

  DetaySayfa({super.key, required this.kisi});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> guncelle(int kisiId, String kisiAd, String kisiTel) async {
    debugPrint("kişi güncelle :$kisiId - $kisiAd - $kisiTel");
  }

  @override
  void initState() {
    super.initState();
    var kisi = widget.kisi;
    tfKisiTel.text = kisi.kisi_tel;
    tfKisiAdi.text = kisi.kisi_ad;
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
                    guncelle(
                      widget.kisi.kisi_id,
                      tfKisiAdi.text,
                      tfKisiTel.text,
                    );
                    setState(() {
                      tfKisiAdi.clear();
                      tfKisiTel.clear();
                    });
                  },
                  child: const Text("GÜNCELLE"))
            ],
          ),
        ),
      ),
    );
  }
}
