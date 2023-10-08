void main(List<String> args) {
  int yas = 22;
  String isim = "Kaya";

  if (yas >= 18) {
    print("Reşitsiniz");
  } else {
    print("Reşit durumda değilsiniz");
  }

  if (isim == "Kaya") {
    print("Merhaba Kaya");
  } else if (isim == "Ahmet") {
    print("Merhaba Ahmet");
  } else {
    print("Tanımlanmayan isim");
  }

  // ------// ------// ------// ------

  String ka = "Admin";
  int s = 123456;

  if (ka == "Admin" && s == 123456) {
    print("Hoşgeldiniz");
  } else {
    print("Hatalı giriş");
  }

  // ------// ------// ------// ------

  int sayi = 8;

  if (sayi == 9 || sayi == 10) {
    print("Sayı 9 veya 10'dur");
  } else {
    print("Sayı 9 veya 10 değildir");
  }
}
