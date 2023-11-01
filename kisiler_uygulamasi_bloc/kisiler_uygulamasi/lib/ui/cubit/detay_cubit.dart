import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/data/repo/kisilerdao_repository.dart';

class DetayCubit extends Cubit<void> {
  DetayCubit() : super(0);

  var krepo = KisilerDaoRepository();

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    await krepo.guncelle(kisi_id, kisi_ad, kisi_tel);
  }
}
