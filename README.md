# Dart Dilini Öğrenme

Bu proje dosyası Kasım Adalan adlı eğitmenimiz eğitiminden örneklerdir. Öğrendiğim bilgiler ve yaptığım ödevleri içerisinde barındırmaktadır.
[DartCode](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/tree/main/lib/dartcode) bölümünde değişkenler sabitler ve standart progamlama ile ilgili örnekler mevcuttur

## Hedefler

Bu proje aşağıdaki hedeflere odaklanmaktadır:

1. Dart dilini temel seviyede anlamak.
2. Dart dilinde nesne yönelimli programlamayı öğrenmek ve kullanmak.
3. Dart dilinde sınıflar, nesneler ve miras konularını kavramak.
4. Null Safety - Import - Package - Static - Enumeration
5. Composition - Kalıtım - Downcasting - Upcasting - Tip kontrolü
6.  Override - Interface - Collections Giriş - List
7. List Sıralama & Filtreleme - HashSet&HashMap - TryCatch hata yakalama - Asenkron işlemler

* Gibi konulara değinilmiştir.

## Başlangıç
- [Dart Resmi Dokümantasyonu](https://dart.dev/guides)
- [Dart ve Flutter İçin Udemy Kursları](https://www.udemy.com/)
## Proje İçeriği
Bu proje, aşağıdaki ana bölümlerden oluşmaktadır:
1. **Dart Dilinin Temelleri:** Dart dilindeki temel kavramlar değişkenler sabitler nasıl kullanılmalıdır, nasıl doğru değişken isimlendirmeleri yapılmalıdır,
nasıl değişkenler yazdırılır çağırılır kullanılır
* Öğrenildi.
2. **Nesne Yönelimli Programlama:** Dart dilinde nesne yönelimli programlamanın temel ilkelerini öğrenildi.
* Öğrenildi.

3. **Sınıflar ve Nesneler:** Dart dilinde sınıflar ve nesnelerin nasıl tanımlanması ve kullanılması gerektiği,
* Öğrenildi.

4. **Hata yakalama:** Dart dilinde Hata yakalama işlemleri nasıl yapılır ,
* Öğrenildi.

---
**Değişken kullanımı** 
```
  int urun_id = 3416;
  String urun_adi = "Kol Saati";
  String urun_tedarikci = "Rolex";
  int urun_adet = 100;
  double urun_fiyat = 149.99;
```
```
  var ogrenciAdi = "Ahmet";
  var ogrenciYas = 20;
  var ogrenciBoy = 1.80;
  var ogrenciBasHarf = "A";
  var ogrenciDevamEdiyorMu = true;
```
**Sabit kullanımı**
```
final int number = 123;
const int number2 = 123;
// number = 333; // hatalı kullanım
// number2 = 333; // hatalı kullanım
```

**Tip dönüşümü**

```
int i = 10;
double d = 123.44;

int sonuc1 = d.toInt();
double sonuc2 = i.toDouble();

print(sonuc1);
print(sonuc2);
```
  **önemli notlar**
  * String içerisinde sayı yoksa metinsel değerler dönüşüme giremez.
  * Double bir metini direkt olarak int veri türüne dönüştürmek istersek bunu gerçekleştiremeyiz.
  * double sayı değerlerine sahip olan bir metini integer veri türüne dönüştürmek için
  * ilk önce metinsel değeri double türe dönüştürebiliriz
  * ve bu türü daha sonra toInt() yardımı ile int veri türüne dönüştürebiliriz.
  * benzer dönüşümü int türüne sahip metinsel değer içinde yapabiliriz.


```
// üst kısımdaki not burası için geçerlidir
String text1 = "25";
int sonuc1 = int.parse(text1);
----
// String text2 = "yeni bir metin";
// int sonuc2 = int.parse(text2);
----
String text3 = "51.42";
double sonuc3 = double.parse(text3);
```

---
Bir Composition Örneği
```
  for (var film in [f1, f2]) {
    print("Film Adi: ${film.film_ad}");
    print("Film ID: ${film.film_id}");
    print("Film Yili: ${film.film_yil}");
    print("Film Kategori Adi: ${film.kategori.kategori_ad}");
    print("Film Yönetmen Adi: ${film.yonetmenler.yonetmen_ad}");
    print("-----");
  }
```
##Kullanımlar için alt kısımdaki linklerden kodlara ulaşabilirsiniz
* [Değişkenler ve sabitler](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/01_degiskenler_sabitler/degiskenler_sabitler_gun_1.dart)
* [Standart programlama](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/tree/main/lib/dartcode/02_standart_programlama.dart)
 
  * [Nesne tabanlı programlama](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/tree/main/lib/dartcode/02_standart_programlama.dart/nesne_tabanli_programlama)
   * [Fonksiyonlar](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/02_standart_programlama.dart/nesne_tabanli_programlama/fonksyionlar.dart)
   * [Static kullanımı](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/02_standart_programlama.dart/nesne_tabanli_programlama/static_kullanimi.dart)
   * [ENUM - ENUMERATION kullanımı](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/02_standart_programlama.dart/nesne_tabanli_programlama/enumeration_kullanimi.dart)
  * [Döngü Kullanımı](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/02_standart_programlama.dart/dongu_kullanimi.dart)
  * [if kullanımı](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/02_standart_programlama.dart/if_kullanimi.dart)
  * [Switch kullanımı](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/02_standart_programlama.dart/switch_kullanimi.dart)
* [Composition](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/tree/main/lib/dartcode/03_composition)
  * [Kullanımı](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/03_composition/composition_kullanimi.dart)
* [Inheritence](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/tree/main/lib/dartcode/04_kalitim)
  * [Kalıtım Kullanımı](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/04_kalitim/kalitim_kullanimi.dart)
* [Override](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/tree/main/lib/dartcode/05_override_kullanimi)
* [Interface](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/tree/main/lib/dartcode/06_interface_kullanimi)
* [Collections](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/tree/main/lib/dartcode/07_collections)
  * [HashMap](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/07_collections/hashmap_kullanimi.dart)
  * [HashSet](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/07_collections/hashset_kullanimi.dart)  
  * [list](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/07_collections/list_kullanimi.dart)
* [ileri dart](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/tree/main/lib/dartcode/08_ileri_dart)
  * [Asenkron](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/08_ileri_dart/asenkron_kullanimi.dart)
  * [Hata Yakalama](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/blob/main/lib/dartcode/08_ileri_dart/hata_yakalama.dart)
* [Ödevler](https://github.com/kayamekin/flutter_bootcamp_kasimadalan/tree/main/lib/dartcode/odevler)
  


---
###Abstract
* Downcasting ve upcasting olması için kalıtım ilişkisi olmalıdır.
* Class yapısında kullanılabilir.
* Bir sınıf birden fazla interface alabilir.
* **implements** ile eklenirler.
* hazır taslaklar gibi düşünebiliriz.
* Interface'ler sınıflara özellik katar.