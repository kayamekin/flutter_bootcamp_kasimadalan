import 'package:my_new_test/dartcode/02_standart_programlama.dart/nesne_tabanli_programlama/fonksyionlar.dart';

void main(List<String> args) {
  var f = Fonksiyonlar();
  f.selamla();
  var a = f.selamla2();
  print(a);

  f.selamla3("kaya");

  var gelenToplam = f.toplama(12, 24);
  print(gelenToplam);
}
