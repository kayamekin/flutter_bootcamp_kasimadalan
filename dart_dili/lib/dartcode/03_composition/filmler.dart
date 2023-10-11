import 'package:my_new_test/dartcode/03_composition/kategoriler.dart';
import 'package:my_new_test/dartcode/03_composition/yonetmenler.dart';

class Filmler {
  int film_id;
  String film_ad;
  int film_yil;
  Kategoriler kategori;
  Yonetmenler yonetmenler;

  Filmler({
    required this.film_ad,
    required this.film_id,
    required this.film_yil,
    required this.kategori,
    required this.yonetmenler,
  });
}
