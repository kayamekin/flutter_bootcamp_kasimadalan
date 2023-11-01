import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/data/repo/kisilerdao_repository.dart';

class KayitCubit extends Cubit {
  KayitCubit() : super(0);

  var krepo = KisilerDaoRepository();

  Future<void> kaydet(String kisi_ad, String kisi_tel) async {
    await krepo.kaydet(kisi_ad, kisi_tel);
  }
}
