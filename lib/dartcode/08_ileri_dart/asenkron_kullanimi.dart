Future<void> main() async {
  print("verilerin alınması bekleniyor.");
  var veri = await veritabanindanVeriAl();

  print("Alınan veri : $veri");
}

// asenkron bir fonksiyon yazacaksak Future yapısı kullanılır
// void olabilir void olunca return yapılmamalı
Future<String> veritabanindanVeriAl() async {
  for (var i = 1; i < 20; i++) {
    Future.delayed(
        Duration(seconds: i), () => print("veri miktarı : %${i * 20}"));
  }
  return Future.delayed(Duration(seconds: 5), () => "merhaba");
}
