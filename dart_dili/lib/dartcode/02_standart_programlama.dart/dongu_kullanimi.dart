void main(List<String> args) {
  // * for ve while döngüleri gibi 2 adet döngüler mevcuttur.
  // * 1. kümeye değişken tanımlaması gerçekleşmektedir.
  // * 2. kümeye 1. kümede bulunan değişken değerinin koşul kontrolü girilmektedir.
  // * 2. küme kullanım örnekleri varyasyonları
  // * -- i < 10; i > 10; i == 10; i <= 10; i >= 10; i != 10;
  // * i <= 10 tanımlarsak değişkene tanımlanan değer eğer 10 dan küçük ise 10 a eşitlenene kadar çalışır
  // * 3. kümeye ise nasıl bir aralıkla arttırmak veya azaltmak istenirse ona göre komut girilir.
  // * 3. için örnek i-- i++ i += 2 i -= 2 gibi arttırma işlemleri sağlanabilir. Tabi ki sonsuz döngüye girmemesi için koşul ve değişken yapacağımız işlemi etkilemektedir. Bu faktörleri ele alarak bu işlemi yürütmeliyiz.

  for (int i = 0; i <= 9; i++) {
    // print("döngü : $i");
  }
  // print("--");
  // tam tersine sayma
  for (int i = 4; i > 0; i--) {
    // print("döngü : $i");
  }

  // * -----while-----
  print("-- while --");

  // * while döngüsünde ilk sayac++ işlemini en başa yazarsak varsayılan değer ilk önce artar ardından yazdırmaya başlar ve bu işlemde varsayılan tanımlanan değer döngümüz içersinde yer almaz
  // * ve eğer ki sayac <= 10 gibi bir kontrolle bu işlemi gerçekleştirirsek döngünün sonundaki değer 11 olur
  // * Biz en son sayac++ yaparsak sayacın ilk varsayılan değeri alınır ardından belirlenen koşulu sağlar
  var sayac = 1;
  while (sayac <= 10) {
    sayac++;
    print("döngü : $sayac");
  }

  while (sayac <= 6) {
    // * bu işlemde değer 3 e gelirse break komutu ile işlem durur
    if (sayac == 3) {
      break;
    }
    sayac++;
    print("döngü : $sayac");
  }
  while (sayac <= 6) {
    // * bu işlemde değer 3 e gelirse continue komutu ile
    // * 3 sayısının üzerinden atlar bize bunu yazdırmaz ve while döngüsünün koşulu sağlanana kadar devam eder
    if (sayac == 3) {
      continue;
    }
    sayac++;
    print("döngü : $sayac");
  }
}
