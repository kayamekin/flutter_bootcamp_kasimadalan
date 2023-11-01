import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/ui/views/detay.dart';
import 'package:kisiler_uygulamasi/ui/views/kayit.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  bool aramaYapiliyorMu = false;

  Future<void> ara(String aramaKelimesi) async {
    print("kişi ara : $aramaKelimesi");
  }

  Future<List<Kisiler>> kisileriYukle() async {
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "ahmet", kisi_tel: "1111");
    var k2 = Kisiler(kisi_id: 2, kisi_ad: "beyza", kisi_tel: "2222");
    var k3 = Kisiler(kisi_id: 3, kisi_ad: "seren", kisi_tel: "13332");
    kisilerListesi.add(k1);
    kisilerListesi.add(k2);
    kisilerListesi.add(k3);
    return kisilerListesi;
  }

  Future<void> sil(int kisi_id) async {
    print("kişi sil : $kisi_id");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu
            ? const Text("Kişiler Uygulaması")
            : TextField(
                decoration:
                    InputDecoration(hintText: "Ara", border: InputBorder.none),
                onChanged: (aramaSonucu) {
                  ara(aramaSonucu);
                },
              ),
        actions: [
          aramaYapiliyorMu
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = false;
                    });
                  },
                  icon: Icon(Icons.search))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = true;
                    });
                  },
                  icon: Icon(Icons.close))
        ],
      ),
      body: FutureBuilder<List<Kisiler>>(
        future: kisileriYukle(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var kisilerListesi = snapshot.data;
            return ListView.builder(
              itemCount: kisilerListesi!.length,
              itemBuilder: (context, index) {
                var kisi = kisilerListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetaySayfa(kisi: kisi)));
                  },
                  child: Card(
                    child: ListTile(
                      trailing: IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: Colors.amber,
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              action: SnackBarAction(
                                label: "SİL",
                                onPressed: () {
                                  setState(() {
                                    sil(kisi.kisi_id);
                                  });
                                },
                              ),
                              content: Text(
                                  "${kisi.kisi_ad} adlı kişi silinsin mi ?")));
                        },
                      ),
                      title: Text(kisi.kisi_ad),
                      subtitle: Text(kisi.kisi_tel),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: Text("Gösterilecek bir şey yok."),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 12,
        onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const KayitSayfa()))
              .then((value) {
            debugPrint("Anasayfaya dönüldü");
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
