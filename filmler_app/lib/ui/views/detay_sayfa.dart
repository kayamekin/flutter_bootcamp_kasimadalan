import 'package:filmler_app/data/entity/filmler.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetaySayfa extends StatefulWidget {
  Filmler film;

  DetaySayfa({required this.film});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.film.film_adi.toUpperCase())),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.maxFinite,
              child: Image.asset(
                widget.film.resim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          widget.film.film_adi.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Saat : ${widget.film.saat}"),
                          Text("fiyat : ${widget.film.fiyat}"),
                          Text("imdb : ${widget.film.film_imdb}"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            color:
                                widget.film.aktifMi ? Colors.green : Colors.red,
                          ),
                          Center(
                            child: widget.film.aktifMi
                                ? const Text("Film vizyonda")
                                : const Text("Film şuan vizyonda değil"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
