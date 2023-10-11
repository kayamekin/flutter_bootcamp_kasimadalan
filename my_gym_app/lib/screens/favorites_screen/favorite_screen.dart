import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context);
    return Center(
      child: Text(lang!.favScreen),
    );
  }
}
