import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context);

    return Center(
      child: Text(lang!.searchScreen),
    );
  }
}
