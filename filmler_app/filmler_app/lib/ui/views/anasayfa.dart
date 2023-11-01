import 'package:filmler_app/data/entity/filmler.dart';
import 'package:filmler_app/ui/views/detay_sayfa.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  Future<List<Filmler>> filmler() async {
    var filmlerListesi = <Filmler>[];
    var f1 = Filmler(
        id: 1,
        resim: "assets/images/anadoluda.png",
        film_adi: "ANATOLIA",
        film_imdb: "6.2",
        aktifMi: true,
        fiyat: 120,
        saat: "20.00");
    var f2 = Filmler(
        id: 2,
        resim: "assets/images/django.png",
        film_adi: "django",
        film_imdb: "7.3",
        aktifMi: true,
        fiyat: 120,
        saat: "17.30");
    var f3 = Filmler(
        id: 3,
        resim: "assets/images/inception.png",
        film_adi: "inception",
        film_imdb: "9.2",
        aktifMi: true,
        fiyat: 120,
        saat: "15.10");
    var f4 = Filmler(
        id: 4,
        resim: "assets/images/interstellar.png",
        film_adi: "interstellar",
        film_imdb: "8.8",
        aktifMi: false,
        fiyat: 120,
        saat: "13.20");
    var f5 = Filmler(
        id: 5,
        resim: "assets/images/thehatefuleight.png",
        film_adi: "thehatefuleight",
        film_imdb: "5.4",
        aktifMi: true,
        fiyat: 120,
        saat: "09.30");
    var f6 = Filmler(
        id: 6,
        resim: "assets/images/thepianist.png",
        film_adi: "thepianist",
        film_imdb: "8.4",
        aktifMi: false,
        fiyat: 120,
        saat: "10.00");

    filmlerListesi.add(f1);
    filmlerListesi.add(f2);
    filmlerListesi.add(f3);
    filmlerListesi.add(f4);
    filmlerListesi.add(f5);
    filmlerListesi.add(f6);

    return filmlerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filmler"),
      ),
      body: FutureBuilder(
        future: filmler(),
        builder: (context, ss) {
          if (ss.hasData) {
            var filmlerListe = ss.data;
            return GridView.builder(
              shrinkWrap: true,
              itemCount: filmlerListe!.length,
              itemBuilder: (context, index) {
                var film = filmlerListe[index];
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetaySayfa(film: film)));
                                },
                                child: Image.asset(film.resim))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card(
                              color: Colors.grey.withOpacity(0.5),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("imdb ${film.film_imdb}"),
                                    Icon(
                                      Icons.circle,
                                      color: film.aktifMi
                                          ? Colors.green
                                          : Colors.red,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            FittedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                      color: Colors.grey.withOpacity(0.6),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(film.saat),
                                      )),
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(
                                              "${film.film_adi} için bilet alınsın mı ?"),
                                          padding: const EdgeInsets.all(10),
                                          action: SnackBarAction(
                                              label: "BİLET AL",
                                              onPressed: () {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    backgroundColor:
                                                        film.aktifMi
                                                            ? Colors.green
                                                            : Colors.red,
                                                    content: Center(
                                                      child: film.aktifMi
                                                          ? Text(
                                                              "${film.film_adi} için bilet alındı.",
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 24),
                                                            )
                                                          : const Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  "Bu film vizyonda değil alınamaz",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                                Icon(
                                                                  Icons.warning,
                                                                  color: Colors
                                                                      .amberAccent,
                                                                )
                                                              ],
                                                            ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                        ));
                                      },
                                      child: const Text("Bilet Al"),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              DetaySayfa(film: film),
                                        ),
                                      );
                                    },
                                    icon: const Icon(Icons.info),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  mainAxisExtent: 300,
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.4),
            );
          } else {
            return const Center(child: Text("Film yok"));
          }
        },
      ),
    );
  }
}
