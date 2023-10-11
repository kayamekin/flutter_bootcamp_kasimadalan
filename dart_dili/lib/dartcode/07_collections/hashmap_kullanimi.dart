import 'dart:collection';

void main() {
  // tanımlama
  var sayilar = {"Bir": 1, "iki": 2};

  var iller = HashMap<int, String>();

  iller[16] = "Bursa";
  iller[34] = "istanbul";
  iller[35] = "izmir";
  iller[64] = "Uşak";
  print(iller);

  iller[16] = "Yeni Bursa";
  print(iller[16]);
  String il = iller[34]!;
  print(il);

  print("Boyut kontrol : ${iller.length}");
  print("Boş kontrol : ${iller.isEmpty}");

  var anahtarlar = iller.keys;

  for (var a in anahtarlar) {
    print("$a -> ${iller[a]}");
  }

  iller.remove(16);
  print(iller);

  iller.clear();
  print(iller);
  // collections finish
}
