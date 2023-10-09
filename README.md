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


Downcasting ve upcasting olması için kalıtım ilişkisi olmalıdır.
* Class yapısında kullanılabilir.
* Bir sınıf birden fazla interface alabilir.
* **implements** ile eklenirler.
* hazır taslaklar gibi düşünebiliriz.
* Interface'ler sınıflara özellik katar.