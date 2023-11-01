import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';

class KisilerDaoRepository {
  // kaydet
  Future<void> kaydet(String kisi_ad, String kisi_tel) async {
    var bilgiKaydet = "kişi kaydet : $kisi_ad - $kisi_tel";
    print(bilgiKaydet);
  }

  // guncelle
  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    var bilgiGuncelle = "kişi güncelle :(-$kisi_id)- $kisi_ad - $kisi_tel";
    print(bilgiGuncelle);
  }

  // sil
  Future<void> sil(int kisi_id) async {
    print("kişi sil : $kisi_id");
  }

  // kisileriYukle
  Future<List<Kisiler>> kisileriYukle() async {
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "ahmet", kisi_tel: "1111");
    var k2 = Kisiler(kisi_id: 2, kisi_ad: "beyza", kisi_tel: "2222");
    var k3 = Kisiler(kisi_id: 3, kisi_ad: "seren", kisi_tel: "13332");
    kisilerListesi.add(k1);
    kisilerListesi.add(k2);
    kisilerListesi.add(k3);
    return kisilerListesi;
  }

  // ara
  Future<List<Kisiler>> ara(String aramaKelimesi) async {
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "ahmet", kisi_tel: "1111");
    kisilerListesi.add(k1);
    return kisilerListesi;
  }
}
