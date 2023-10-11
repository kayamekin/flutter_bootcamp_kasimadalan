void main(List<String> args) {
  typeconvert();
}

void degiskenler() {
  ogrenciKontrol();
  print("------");
  product();
  print("------");
  matematikselIslemler();
}

void ogrenciKontrol() {
  var ogrenciAdi = "Ahmet";
  var ogrenciYas = 20;
  var ogrenciBoy = 1.80;
  var ogrenciBasHarf = "A";
  var ogrenciDevamEdiyorMu = true;

  print("Ad       : $ogrenciAdi");
  print("Yaş      : $ogrenciYas");
  print("Boy      : $ogrenciBoy");
  print("Baş Harf : $ogrenciBasHarf");
  print("Okul ?   : $ogrenciDevamEdiyorMu");
}

void product() {
  int urun_id = 3416;
  String urun_adi = "Kol Saati";
  String urun_tedarikci = "Rolex";
  int urun_adet = 100;
  double urun_fiyat = 149.99;

  print("ID         : $urun_id");
  print("ÜRÜN ADI   : $urun_adi");
  print("TEDARİKÇİ  : $urun_tedarikci");
  print("ADET       : $urun_adet");
  print("FİYAT      : $urun_fiyat");
}

void matematikselIslemler() {
  int a = 100;
  int b = 200;

  print("$a ve $b değerlerinin toplamı : ${a + b} 'dır ");
}

//---------- CONSTANTS ----------------------------------------------
void sabitler() {
  // final , const , Java(final) , Swift(let) , Kotlin(val)
  //-----//-----//-----//-----
  // değiştirilebilir ilk kısım herhangi sabit özellik kapsayıcısı atanmadı.
  //-----//-----//-----//-----

  int sayi = 30;
  print(sayi);
  sayi = 100;
  print(sayi);
  //-----//-----//-----//-----
  // ####----####----FINAL----####--------####
  //-----//-----//-----//-----
  final int numara = 100;
  print(numara);
  //-----//-----//-----//-----

  // final ile oluşturulan değişkenler veya özellikler
  //sadece 1 kere değer atanabilir ve daha sonra bu değer değiştirilemez.
  // ----- burada numara değişkenine 200 değeri atanacakken final değişkeni sebebi ile bu işlem başarılı bir biçimde gerçekleştirilemedi.-----
  // numara = 200;
  // ------------------------
  // alacağımız hata
  // """
  // The final variable 'numara' can only be set once.
  // Try making 'numara' non-final.dartassignment_to_final_local
  // """

  //-----//-----//-----//-----
  // ####----####----CONST----####--------####
  //-----//-----//-----//-----
  const int numara2 = 100;
  print(numara2);
  // numara2 = 200;
  //const ta sabit değer olduğu için değişkene atılan değer özellik değiştirilemez.
  //-----//-----//-----//-----
  // final => kodlamayı çalıştırdığımızda hafızada oluşmaktadır
  // const => değişkeni tanımladığımızda hafızada oluşmaktadır.
  //-----//-----//-----//-----
}

void typeconvert() {
  // sayısaldan sayısala dönüşüm
  int i = 10;
  double d = 123.44;

  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble();

  print(sonuc1);
  print(sonuc2);

  // sayısaldan metine dönüşüm
  String sonuc3 = i.toString();
  String sonuc4 = d.toString();

  print(sonuc3);
  print(sonuc4);

  // metinden sayısala dönüşüm

  // önemli notlar
  // String içerisinde sayı yoksa metinsel değerler dönüşüme giremez.
  // eğer double bir metini direkt olarak int veri türüne dönüştürmek istersek bunu gerçekleştiremeyiz.
  // double sayı değerlerine sahip olan bir metini integer veri türüne dönüştürmek için
  // ilk önce metinsel değeri double türe dönüştürebiliriz
  // ve bu türü daha sonra toInt() yardımı ile int veri türüne dönüştürebiliriz.
  // benzer dönüşümü int türüne sahip metinsel değer içinde yapabiliriz.

  String text1 = "25";
  // String text2 = "yeni bir metin";
  String text3 = "51.42";

  int sonuc5 = int.parse(text1);
  // int sonuc6 = int.parse(text2);
  double sonuc7 = double.parse(text3);
  int sonuc8 = sonuc7.toInt();

  print(sonuc5);
  // print(sonuc6);
  print(sonuc7);
  print(sonuc8);
}
