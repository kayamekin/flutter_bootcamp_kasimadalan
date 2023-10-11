import 'package:my_new_test/dartcode/03_composition/filmler.dart';
import 'package:my_new_test/dartcode/03_composition/kategoriler.dart';
import 'package:my_new_test/dartcode/03_composition/yonetmenler.dart';

void main() {
  var k1 = Kategoriler(kategori_ad: "Drama", kategori_id: 1);
  var k2 = Kategoriler(kategori_ad: "Bilim Kurgu", kategori_id: 2);

  var y1 = Yonetmenler(yonetmen_ad: "Quentin Tarantino", yonetmen_id: 1);
  var y2 = Yonetmenler(yonetmen_ad: "Christopher Nolan", yonetmen_id: 2);

  var f1 = Filmler(
    film_ad: "Django",
    film_id: 1,
    film_yil: 2013,
    kategori: k1,
    yonetmenler: y2,
  );
  var f2 = Filmler(
    film_ad: "çocuklar duymasın",
    film_id: 2,
    film_yil: 2002,
    kategori: k2,
    yonetmenler: y1,
  );

  for (var film in [f1, f2]) {
    print("Film Adi: ${film.film_ad}");
    print("Film ID: ${film.film_id}");
    print("Film Yili: ${film.film_yil}");
    print("Film Kategori Adi: ${film.kategori.kategori_ad}");
    print("Film Yönetmen Adi: ${film.yonetmenler.yonetmen_ad}");
    print("-----");
  }
}
