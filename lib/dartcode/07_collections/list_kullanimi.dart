void main(List<String> args) {
  var plakalar = [16, 23, 6];
  // print(plakalar);

  var meyveler = <String>[];

  meyveler.add("muz");
  meyveler.add("çilek");
  meyveler.add("kiraz");
  meyveler.add("elma");
  // print(meyveler);

  meyveler[1] = "yeni çilek";
  // print(meyveler);

  meyveler.insert(1, "portakal");
  // print(meyveler);

  // veri okuma
  String meyve = meyveler[2];
  // print(meyve);

  // print("boyut : ${meyveler.length}");
  // print("Boş kontrol : ${meyveler.isEmpty}");
  // print("Boş kontrol : ${meyveler.isNotEmpty}");

  // for each

  for (var meyve in meyveler) {
    // print("sonuç : $meyve");
  }

  for (var i = 0; i < meyveler.length; i++) {
    // print("$i : ${meyveler[i]}");
  }

  // print("---");
  // print(meyveler);
  var liste = meyveler.reversed.toList();
  // print(liste);
  // alfabetik sıralama
  meyveler.sort();
  // print(meyveler);
  meyveler.removeAt(1);
  // print(meyveler);
  meyveler.clear();
  // print(meyveler);
  meyveler.add("kivi");
  // print(meyveler);
}
