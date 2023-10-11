import 'package:my_new_test/dartcode/05_override_kullanimi/Hayvan.dart';
import 'package:my_new_test/dartcode/05_override_kullanimi/kedi.dart';
import 'package:my_new_test/dartcode/05_override_kullanimi/kopek.dart';
import 'package:my_new_test/dartcode/05_override_kullanimi/memeli.dart';

void main(List<String> args) {
  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();

  hayvan.sesCikart(); // kalitim yok , kendi metoduna erişti
  memeli.sesCikart(); // kalitim var , üst sınıfın metoduna erişti
  kedi.sesCikart(); // kalıtım var , kendi metoduna erişti
  kopek.sesCikart(); // kalıtım var , kendi metoduna erişti
}
