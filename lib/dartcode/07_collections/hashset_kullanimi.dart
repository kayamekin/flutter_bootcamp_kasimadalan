import 'dart:collection';

void main(List<String> args) {
  // tanımlama

  var plakalar = HashSet.from([15, 23, 34]);
  var meyveler = HashSet<String>();

  meyveler.add("kiraz");
  meyveler.add("muz");
  meyveler.add("elma");
  meyveler.add("Amasya elma");
  print(meyveler);

  String meyve = meyveler.elementAt(2);
  print(meyve);

  print("boyut : ${meyveler.length}");
  print("Boş kontrol : ${meyveler.isEmpty}");

  for (var meyve in meyveler) {
    print("Sonuç :${meyve}");
  }

  for (var i = 0; i < meyveler.length; i++) {
    print("$i : ${meyveler.elementAt(i)}");
  }
  print(meyveler);
  meyveler.remove("elma");
  print(meyveler);
  meyveler.clear();
  print(meyveler);
}
