import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String username = 'Kullanıcı Adı Girin'; // Varsayılan kullanıcı adı
  bool inputShow = false;
  TextEditingController usernameController = TextEditingController();

  void updateUsername(String newUsername) {
    setState(() {
      inputShow = !inputShow;
      username = newUsername;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2427),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Profil Sayfası',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Card(
                    color: Colors.indigo,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 20),
                          child: Text(
                            "username",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, right: 18, bottom: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '$username',
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              const Icon(Icons.person, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                IconButton(
                  onPressed: () {
                    String newUsername = usernameController.text;
                    updateUsername(newUsername);
                    setState(() {
                      inputShow ? true : false;
                    });
                    usernameController.clear();
                  },
                  icon: Icon(inputShow ? Icons.save : Icons.edit),
                ),
              ],
            ),
            inputShow
                ? TextFormField(
                    style: TextStyle(color: Colors.white),
                    onFieldSubmitted: (newUsername) {
                      updateUsername(newUsername);
                      setState(() {
                        usernameController.clear();
                      });
                    },
                    controller: usernameController,
                    decoration: const InputDecoration(
                        labelText: 'Yeni Kullanıcı Adı',
                        labelStyle: TextStyle(color: Colors.white54)),
                  )
                : Center(),
          ],
        ),
      ),
    );
  }
}
