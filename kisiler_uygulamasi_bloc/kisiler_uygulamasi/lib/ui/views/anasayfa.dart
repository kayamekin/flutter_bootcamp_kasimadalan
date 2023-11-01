import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/ui/cubit/anasayfa_cubit.dart';
import 'package:kisiler_uygulamasi/ui/views/detay.dart';
import 'package:kisiler_uygulamasi/ui/views/kayit.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  bool aramaYapiliyorMu = false;

  @override
  void initState() {
    super.initState();
    context.read<AnasayfaCubit>().kisileriYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu
            ? TextField(
                decoration: const InputDecoration(
                    hintText: "Ara", border: InputBorder.none),
                onChanged: (aramaSonucu) {
                  context.read<AnasayfaCubit>().ara(aramaSonucu);
                },
              )
            : const Text("Kişiler Uygulaması"),
        actions: [
          aramaYapiliyorMu
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = false;
                    });
                    context.read<AnasayfaCubit>().kisileriYukle();
                  },
                  icon: const Icon(Icons.clear))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = true;
                    });
                  },
                  icon: const Icon(Icons.search))
        ],
      ),
      body: BlocBuilder<AnasayfaCubit, List<Kisiler>>(
        builder: (context, kisilerListesi) {
          if (kisilerListesi.isNotEmpty) {
            return ListView.builder(
              itemCount: kisilerListesi.length,
              itemBuilder: (context, index) {
                var kisi = kisilerListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetaySayfa(kisi: kisi)));
                    context.read<AnasayfaCubit>().kisileriYukle();
                  },
                  child: Card(
                    child: ListTile(
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.amber,
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              action: SnackBarAction(
                                label: "SİL",
                                onPressed: () {
                                  setState(() {
                                    context
                                        .read<AnasayfaCubit>()
                                        .sil(kisi.kisi_id);
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
            context.read<AnasayfaCubit>().kisileriYukle();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
