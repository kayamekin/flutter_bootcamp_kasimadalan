class Araba {
  String? isim;
  String? renk;
  int hiz;
  bool? calisiyorMu;

  Araba({
    required this.isim,
    required this.renk,
    required this.hiz,
    required this.calisiyorMu,
  });

  void bilgiAl() {
    print("--------");
    print("İsim         : ${isim}");
    print("Renk         : ${renk}");
    print("Hız          : ${hiz}");
    print("Çalışıyor mu : ${calisiyorMu}");
  }

  void durdur() {
    calisiyorMu = false;
    hiz = 0;
    print("$isim durdu");
  }

  void calistir() {
    print("--------çalıştırma işlemi-------");
    calisiyorMu = true;
    hiz = 1;
    print(
        "Bilgi : Araç hız sınırına ulaşırsanız hızınız otomatik olarak 140'a düşürülecektir. \nAbs otomatik devreye girecek ve sizi yavaşlatacak\n");
    print("$isim calıştı.\nAlt kısımdan hız ve çalışma durumuna bakınız...");
  }

  void hiz_arttir(int kacKm) {
    print("------ hız göstergesi :");
    if (hiz > 120 && hiz <= 240)
      print(
          "hızınız : $hiz \nUyarı : Hız sınırını aştınız. Lütfen yavaşlayın.");

    if (hiz < 240) hiz += kacKm;
    if (hiz >= 240) {
      print("Hız sınırını aşıyorsunuz önlem amaçlı hızınız 140'a düşürülüyor.");
      print("Acil yardım ekipleri aranıyor ve konum bilgisi gönderiliyor");
      print("Amacımız insan sağlığı ve psikolojisini korumak");
      hiz = 140;
      print(
          "Uyarı : Aracınız bahsettiğiniz miktar kadar hızlanamaz lütfen daha fazla zorlamayın. \nŞuan ki hızınız sabitlendi\nHızınız maksimum $hiz");
    }
  }
}
