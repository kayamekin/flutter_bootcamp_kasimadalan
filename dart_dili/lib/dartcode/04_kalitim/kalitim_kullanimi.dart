import 'package:my_new_test/dartcode/04_kalitim/Villa.dart';
import 'package:my_new_test/dartcode/04_kalitim/ev.dart';
import 'package:my_new_test/dartcode/04_kalitim/saray.dart';

void main() {
  var topKapiSarayi = Saray(kuleSayisi: 10, pencereSayisi: 400);
  print(topKapiSarayi.kuleSayisi);
  print(topKapiSarayi.pencereSayisi);

  var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 40);
  print(bogazVilla.garajVarMi);
  print(bogazVilla.pencereSayisi);

  // tip kontrol

  // ignore: unnecessary_type_check
  if (topKapiSarayi is Saray) {
    print("Evet saraydir");
  } else {
    print("hayir saray değildir");
  }

  // downCasting

  var ev = Ev(pencereSayisi: 10);
  // ignore: unused_local_variable
  var saray = ev as Saray;

  // upcasting

  var s = Saray(kuleSayisi: 3, pencereSayisi: 100);
  Ev e = s as Ev;
}
