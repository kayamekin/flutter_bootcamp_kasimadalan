import 'package:my_new_test/dartcode/07_collections/ogrenciler.dart';

void main() {
  var o1 = Ogrenciler(no: 200, ad: "zeynep", sinif: "9C");
  var o2 = Ogrenciler(no: 150, ad: "Ahmet", sinif: "11A");
  var o3 = Ogrenciler(no: 300, ad: "Beyza", sinif: "12B");

  var ogrencilerListesi = <Ogrenciler>[];

  ogrencilerListesi.add(o1);
  ogrencilerListesi.add(o2);
  ogrencilerListesi.add(o3);

  // for (var o in ogrencilerListesi) {
  // print('''
  // No    : ${o.no}
  // Ad    : ${o.ad}
  // Sinif : ${o.sinif}
  // ''');
  // }

  // sorting kıyaslama algoritması
  // ogrenciler class'ı ile çalışılacağı belirtiliyor.
  // *---------------------------------------------------------------------------------
  // print("-- NO --");

  // print("-- No : Küçükten büyüğe doğru verilen değeri siralama --");
  // Comparator<Ogrenciler> kucuktenBuyugeNo = (x, y) => x.no.compareTo(y.no);

  // ogrencilerListesi.sort(kucuktenBuyugeNo);

  // for (var o in ogrencilerListesi) {
  //   print('No: ${o.no} - Ad: ${o.ad} - Sinif: ${o.sinif}');
  // }

  // print("-- NO --");
  // print("-- No : Büyükten küçüğe doğru verilen değeri siralama --");
  // Comparator<Ogrenciler> buyuktenKucugeNo = (x, y) => y.no.compareTo(x.no);

  // ogrencilerListesi.sort(buyuktenKucugeNo);

  // for (var o in ogrencilerListesi) {
  //   print('No: ${o.no} - Ad: ${o.ad} - Sinif: ${o.sinif}');
  // }

  // // *---------------------------------------------------------------------------------
  // print("-- ad --");

  // print("-- ad : Küçükten büyüğe doğru verilen değeri siralama - (A-Z)-");
  // Comparator<Ogrenciler> kucuktenBuyugeAd = (x, y) => x.ad.compareTo(y.ad);

  // ogrencilerListesi.sort(kucuktenBuyugeAd);

  // for (var o in ogrencilerListesi) {
  //   print('No: ${o.no} - Ad: ${o.ad} - Sinif: ${o.sinif}');
  // }
  // print("-- ad --");

  // print("-- ad : Büyükten küçüğe doğru verilen değeri siralama -(A-Z)-");
  // Comparator<Ogrenciler> buyuktenKucugeAd = (x, y) => y.ad.compareTo(x.ad);

  // ogrencilerListesi.sort(buyuktenKucugeAd);

  // for (var o in ogrencilerListesi) {
  //   print('No: ${o.no} - Ad: ${o.ad} - Sinif: ${o.sinif}');
  // }

  // // *---------------------------------------------------------------------------------
  // print("-- Sinif --");

  // print(
  //     "-- Sinif : Küçükten büyüğe doğru verilen değeri siralama -(A-Z) -> String-");
  // Comparator<Ogrenciler> kucuktenBuyugeSinif =
  //     (x, y) => x.sinif.compareTo(y.sinif);

  // ogrencilerListesi.sort(kucuktenBuyugeSinif);

  // for (var o in ogrencilerListesi) {
  //   print('No: ${o.no} - Ad: ${o.ad} - Sinif: ${o.sinif}');
  // }

  // print("-- Sinif --");
  // print(
  //     "-- Sinif : Büyükten küçüğe doğru verilen değeri siralama -(A-Z) -> String-");
  // Comparator<Ogrenciler> buyuktenKucugeSinif =
  //     (x, y) => y.sinif.compareTo(x.sinif);

  // ogrencilerListesi.sort(buyuktenKucugeSinif);

  // for (var o in ogrencilerListesi) {
  //   print('No: ${o.no} - Ad: ${o.ad} - Sinif: ${o.sinif}');
  // }

  // *------- FİLTRELEME -------

  // içeriğinde verilen değere göre içerisinde barındıranları getirir.
  // örneğin araba ve avakado da d harfleri mevcut ve bunu size bulup getirir
  // fiskos ile istanbul arasında s harfleri mevcut ve bunu size birleştirip getirir
  // ama araba ve istanbul arasında u harfini ararsa sadece istanbulu getirir.

  Iterable<Ogrenciler> f1 = ogrencilerListesi.where((ogrenciNesnesi) {
    return ogrenciNesnesi.no > 100 && ogrenciNesnesi.no < 200;
  });

  var liste1 = f1.toList();

  for (var o in liste1) {
    // print("No : ${o.no} - Ad : ${o.ad} - Sinif : ${o.sinif}");
  }

  Iterable<Ogrenciler> f2 = ogrencilerListesi.where((ogrenciNesnesi) {
    return ogrenciNesnesi.ad.contains("yz");
  });

  var liste2 = f2.toList();

  for (var o in liste2) {
    print("No : ${o.no} - Ad : ${o.ad} - Sinif : ${o.sinif}");
  }

  // hashset : içeriğini karıştırır bir veri varsa ve daha sonra aynı veri tekrar eklenmeye çalışılırsa o veriyi kendisine dahil etmiyor.
  // hashmap : Key valu ilişkisi mevcuttur internet tabanlı veri gönderme işlemlerinde çok kullanılır.
}
