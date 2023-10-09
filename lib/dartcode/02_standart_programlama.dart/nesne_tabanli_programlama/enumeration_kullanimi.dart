import 'package:my_new_test/dartcode/02_standart_programlama.dart/nesne_tabanli_programlama/konserve_boyut.dart';

void main() {
  // enum : en iyi önerileri sunan özellik.
  // - yazılımcıyı detaydan kurtaran özelliktir.
  ucretHesapla(KonserveBoyut.orta, 20);
}

void ucretHesapla(KonserveBoyut boyut, int adet) {
  switch (boyut) {
    case KonserveBoyut.kucuk:
      {
        print("toplam maliyet : ${adet * 32}tl");
      }
      break;
    case KonserveBoyut.orta:
      {
        print("toplam maliyet : ${adet * 42}tl");
      }
      break;
    case KonserveBoyut.buyuk:
      {
        print("toplam maliyet : ${adet * 52}tl");
      }
      break;
    default:
      print("geçersiz işlem");
  }
}
