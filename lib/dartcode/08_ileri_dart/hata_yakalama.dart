void main() {
  String x = "Hello";

  // x = 100;

  // 2. Runtime exception (error)

  var liste = <String>[];
  liste.add("Ahmet");
  liste.add("Zeynep");

  // try catch ile hata yakalanır ve catch kısmında hata sebebi söylenebilir.
  try {
    String isim = liste[3];
    print("Gelen isim  : $isim");
  } catch (e) {
    print("Liste boyutu aşıldı");
  }
}
