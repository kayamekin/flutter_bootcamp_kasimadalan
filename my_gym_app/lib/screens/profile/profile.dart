import 'package:flutter/material.dart';
import 'package:my_gym_app/constants/color.dart';
import 'package:my_gym_app/data/data_user.dart';
import 'package:my_gym_app/provider/my_theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    var lang = AppLocalizations.of(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Card(
                elevation: 3,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: listItemPurpleColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user1.name,
                            style: textWhiteColor24style,
                          ),
                          Text(
                            user1.surname,
                            style: textWhiteColor24style,
                          ),
                          Text(
                            "${lang!.what} ${lang.day2}: ${lang.leg}",
                            style: textWhiteColor14style,
                          )
                        ],
                      ),
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(user1.imagePath),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: themeProvider.isDark
                        ? textBlueColor
                        : listItemPurpleColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    lang.edit.toUpperCase(),
                    style: textWhiteColor14styleBold,
                  ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text(lang.day)),
                  ElevatedButton(onPressed: () {}, child: Text(lang.profile)),
                  ElevatedButton(onPressed: () {}, child: Text(lang.name)),
                ],
              ),
              const SizedBox(height: 50, child: Divider()),
              Expanded(
                child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Card(
                        color: listItemPurpleColor,
                        elevation: 3,
                        child: ListTile(
                          title: Text(
                            "${lang.day} : ${index + 1}",
                            style: textWhiteColor14style,
                          ),
                          subtitle: Text(
                            "${lang.leg} ${lang.day2}",
                            style: textWhiteColor14style,
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
