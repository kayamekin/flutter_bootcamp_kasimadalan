import 'package:flutter/material.dart';
import 'package:steam_app_odev/data/entity/data.dart';

class DetailPage extends StatefulWidget {
  GamesArea games;

  DetailPage({super.key, required this.games});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b2838),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        title: Text(
          widget.games.name,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff171a21),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 40),
        Stack(
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.94,
                child: Card(
                  child: Image.asset(
                    widget.games.image,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 30,
              bottom: 20,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xff000b16).withOpacity(0.4),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.white,
                    )
                  ],
                  borderRadius: BorderRadius.circular(18),
                ),
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.games.points.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          color: const Color(0xff2a475e),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.games.name.toUpperCase(),
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const Divider(),
                  Text(
                    widget.games.description,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Divider(),
                  Text(
                    widget.games.systemRequirements,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Divider(),
                  Card(
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.games.price == 0.0
                            ? 'ücretsiz'
                            : 'Fiyat : ${widget.games.price} TL',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        )
      ]),
    );
  }
}
