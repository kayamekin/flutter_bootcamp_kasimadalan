import 'package:my_new_test/dartcode/04_kalitim/ev.dart';

class Villa extends Ev {
  bool garajVarMi;

  Villa({required this.garajVarMi, required int pencereSayisi})
      : super(pencereSayisi: pencereSayisi); // Ev(pencereSayisi 30)
}
