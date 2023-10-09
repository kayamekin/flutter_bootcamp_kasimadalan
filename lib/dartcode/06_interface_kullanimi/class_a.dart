import 'package:my_new_test/dartcode/06_interface_kullanimi/my_interface.dart';

class ClassA implements MyInterface {
  @override
  int degisken = 10;

  @override
  void metod1() {
    print("metod 1");
  }

  @override
  String metod2() {
    return "Merhaba";
  }
}
