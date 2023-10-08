class Fonksiyonlar {
  // * void : geri dönüş değeri olmayan
  void selamla() {
    String sonuc = "Merhaba ahmet";
    print(sonuc);
  }

  // * return : geri dönüş değeri olan
  String selamla2() {
    String sonuc = "merhaba selamlar";
    return sonuc;
  }

  // * parametre : dışarıdan veri almak
  // String selamla3(String isim) {
  //   return "Merhaba $isim";
  // }

  void selamla3(String isim) {
    String sonuc = "Merhaba $isim";
    print(sonuc);
  }

  int toplama(int sayi1, int sayi2) {
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  // * overloading kavramı dart dilinde yer almaz.
  // overloading: sınıf içerisinde bir metodun adını tekrar kullanma (aşırı yüklenme)
}
