import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:steam_app_odev/data/entity/data.dart';
import 'package:steam_app_odev/data/kisi.dart';
import 'package:steam_app_odev/ui/view/detail_page.dart';
import 'package:steam_app_odev/ui/view/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool searchActive = false;
  TextEditingController _searchController = TextEditingController();
  List<GamesArea> filteredGames = [];
  @override
  void initState() {
    super.initState();
    // Orijinal verileri yükleyin
    gamesListUpload().then((value) {
      setState(() {
        filteredGames = gameLists;
      });
    });
  }

  void _performSearch(String searchText) {
    setState(() {
      filteredGames = gameLists
          .where((game) =>
              game.name.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  bool isListOrGrid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff171a21),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                      ));
                },
                icon: searchActive
                    ? const Center()
                    : const CircleAvatar(
                        backgroundColor: Color(0xff1b2838),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      )),
            Visibility(
              visible: searchActive ? false : true,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    searchActive = true;
                  });
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            Visibility(
              visible: searchActive ? true : false,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    searchActive = false;
                  });
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          backgroundColor: const Color(0xff171a21),
          title: searchActive
              ? SizedBox(
                  height: 60,
                  child: TextField(
                    controller: _searchController,
                    onChanged: (text) {
                      // TextField içeriği değiştiğinde arama işlemini yapmak için
                      _performSearch(text);
                    },
                    style: const TextStyle(color: Colors.white),
                    autocorrect: true,
                    autofocus: searchActive ? true : false,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.delete_outline_outlined),
                        onPressed: () {
                          setState(() {
                            _searchController.clear();
                          });
                        },
                      ),
                      hintText: "Arama",
                      hintStyle: const TextStyle(color: Colors.white),
                      hoverColor: Colors.red,
                      focusColor: Colors.green,
                    ),
                  ),
                )
              : Image.asset(
                  'assets/images/steam_h.png',
                  fit: BoxFit.cover,
                  width: 100,
                ),
        ),
        body: searchActive
            ? ListView.builder(
                itemCount: filteredGames.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredGames[index].name),
                    // Burada resimleri de görüntüleyebilirsiniz, örneğin Image.network() kullanarak
                  );
                },
              )
            : Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: FutureBuilder<List<GamesArea>>(
                          future: gamesListUpload(),
                          builder: (context, ss) {
                            if (ss.hasData) {
                              var gamesListView = ss.data;
                              return ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: gamesListView!.length,
                                  itemBuilder: (context, index) {
                                    var game = gamesListView[index];
                                    return Row(
                                      children: [
                                        const SizedBox(width: 10),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetailPage(
                                                            games: game)));
                                          },
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage(game.image),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                      ],
                                    );
                                  });
                            } else {
                              return const Center(
                                child: Text("Herhangi bir oyun yok"),
                              );
                            }
                          }),
                    ),
                    const SizedBox(height: 30),
                    const Divider(),
                    Align(
                      alignment: Alignment.topRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            isListOrGrid ? "Grid" : "List",
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                            icon: Icon(
                              isListOrGrid
                                  ? Icons.grid_3x3_outlined
                                  : Icons.list_alt_outlined,
                              color: Colors.amber,
                            ),
                            onPressed: () {
                              setState(() {
                                isListOrGrid = !isListOrGrid;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: FutureBuilder(
                          future: gamesListUpload(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              var gamesList = snapshot.data;
                              return GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: isListOrGrid ? 1 : 2,
                                    crossAxisSpacing: 32,
                                    mainAxisSpacing: 42,
                                    childAspectRatio: 0.2 / 0.1,
                                  ),
                                  itemCount: gamesList!.length,
                                  itemBuilder: (context, index) {
                                    var game = gamesList[index];
                                    return Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetailPage(
                                                            games: game)));
                                          },
                                          child: Container(
                                            width: double.maxFinite,
                                            decoration: BoxDecoration(
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 50,
                                                    color: Color(0xff171a21),
                                                  )
                                                ],
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                      game.image,
                                                    ))),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.white.withOpacity(0.3),
                                              child: Text(game.id.toString())),
                                        ),
                                      ],
                                    );
                                  });
                            } else {
                              return const Center();
                            }
                          }),
                    ),
                  ],
                ),
              ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          backgroundColor: const Color(0xff171a21),
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.ticket), label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.barsProgress), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.security), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.user,
                  size: 18,
                ),
                label: ''),
          ],
        ));
  }
}
