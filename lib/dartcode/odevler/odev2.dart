void main(List<String> args) {
  // * ödev 1 calistirma
  // print(dikdortgenIslem());
  // * ödev 2 calistirma
  // print(kmMilHesapla());
  // * ödev 3 calistirma
  // print(faktoriyelHesapla(-12));
  // * ödev 4 calistirma
  // harfSearcherGenerator();
  // * ödev 5 calistirma
  // print(icAcilariBulmaKenarIslemi());
  // * ödev 7
  // print(maasHesapla(23));
}
// --------------------------------------------------------------------------------------------------------------------------------------------------------

// * soru 1

String kmMilHesapla() {
  double milGirisi = kilometredenMileDonusturmeIslemi(1);

  return "$milGirisi mil";
}

double kilometredenMileDonusturmeIslemi(double kilometre) {
  double mil = kilometre * 0.621;
  return mil;
}
// --------------------------------------------------------------------------------------------------------------------------------------------------------

// * soru 2

double dikdortgenIslem() {
  double tamAlanHesabi = dikdortgenAlanHesaplamaIslemi(12, 24);

  return tamAlanHesabi;
}

double dikdortgenAlanHesaplamaIslemi(double uzunKenarDg, double kisaKenarDg) {
  double alanHesabi = uzunKenarDg * kisaKenarDg;
  return alanHesabi;
}
// --------------------------------------------------------------------------------------------------------------------------------------------------------

// * soru 3

String faktoriyelHesapla(int n) {
  int a = 1;
  if (n == 0) {
    return "$a"; // 0! her zaman 1'dir.
  } else {
    int sonuc = 1;
    for (int i = 1; i <= n; i++) {
      sonuc *= i;
    }
    return "sonucunuz : $sonuc";
  }
}
// --------------------------------------------------------------------------------------------------------------------------------------------------------

// * soru 4

// kelimeden harf bulucu

int kelimedenHarfBulucu(String kelime, String harf) {
  int counter = 0;

  for (int i = 0; i < kelime.length; i++) {
    if (kelime[i] == harf || kelime[i] == harf.toUpperCase()) {
      counter++;
    }
  }

  return counter;
}

void harfSearcherGenerator() {
  String cumle = "Merhaba dünya , evine hoşgeldin";
  String bulunacakHarf = "m";
  int controlCounter = kelimedenHarfBulucu(cumle, bulunacakHarf);
  print(
      "$cumle cümlesinde $bulunacakHarf harfi aranıyor = $controlCounter adet kadar mevcut");
}
// --------------------------------------------------------------------------------------------------------------------------------------------------------
// * soru 5

double icAcilariBulmaKenarIslemi() {
  double control = kenarSayisiIcAcilariBulma(5);
  return control;
}

double kenarSayisiIcAcilariBulma(int kenarSayisi) {
  if (kenarSayisi < 3) {
    print(
        "kenar sayisi 3 değerinden az olmamalıdır yoksa hesaplanmaz. Değer 0 olarak geri dönecektir.");
    return 0;
  }
  // toplamKenarSayisiAcisi verilen örnektir
  double toplamKenarSayisiAcisi = ((kenarSayisi - 2) * 180);

  double tekAci = toplamKenarSayisiAcisi / kenarSayisi;

  return tekAci;
}

double maasHesapla(int gunSayisi) {
  int calistigiSure = gunSayisi * 8;
  double saatUcreti = 40.0;
  double mesaiUcreti = 80.0;
  double personelMaas = 0.0;

  if (calistigiSure <= 150) {
    personelMaas = calistigiSure * saatUcreti;
  } else {
    int normalSaat = 150 * saatUcreti.toInt();
    int mesaiSaat = (calistigiSure - 150) * mesaiUcreti.toInt();
    personelMaas = normalSaat + mesaiSaat.toDouble();
  }

  return personelMaas;
}
