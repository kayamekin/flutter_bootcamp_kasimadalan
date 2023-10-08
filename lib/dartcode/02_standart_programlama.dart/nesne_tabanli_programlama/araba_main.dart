import 'package:my_new_test/dartcode/02_standart_programlama.dart/nesne_tabanli_programlama/araba.dart';

void main(List<String> args) {
  var bmw = Araba(calisiyorMu: false, hiz: 0, isim: "BMW", renk: "KIRMIZI");
  // var sahin = Araba(calisiyorMu: false, hiz: 0, isim: "SAHİN", renk: "MAVİ");

  // print("-------------");
  // print("isim         : ${bmw.isim}");
  // print("Hız          : ${bmw.hiz}");
  // print("renk         : ${bmw.renk}");
  // print("Çalışıyor mu : ${bmw.calisiyorMu}");

  // print("-------------");
  // print("isim         : ${sahin.isim}");
  // print("Hız          : ${sahin.hiz}");
  // print("renk         : ${sahin.renk}");
  // print("Çalışıyor mu : ${sahin.calisiyorMu}");

  // bmw.renk = "yeşil";
  // sahin.renk = "siyah";
  // bmw.calisiyorMu = true;
  // sahin.calisiyorMu = false;
  // print("-------------");
  // print("isim         : ${b.isim}");

  // print("renk         : ${bmw.renk}");
  // print("Çalışıyor mu : ${bmw.calisiyorMu}");
  // print("-------------");
  // print("isim         : ${sahin.isim}");

  // print("renk         : ${sahin.renk}");
  // print("Çalışıyor mu : ${sahin.calisiyorMu}");

  // bmw.bilgiAl();
  // bmw.calistir();
  // bmw.bilgiAl();
  // // *---------------
  // sahin.bilgiAl();
  bmw.calistir();
  bmw.bilgiAl();

  bmw.hiz_arttir(230);
  bmw.hiz_arttir(10);
}
