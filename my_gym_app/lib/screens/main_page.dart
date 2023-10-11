// ignore_for_file: sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_gym_app/constants/color.dart';
import 'package:my_gym_app/data/data_user.dart';
import 'package:my_gym_app/provider/app_state_provider.dart';
import 'package:my_gym_app/provider/my_theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final appState = Provider.of<AppState>(context);
    var lang = AppLocalizations.of(context);
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Center(
                  child: Card(
                      child: Container(
                    width: sizeWidth,
                    height: sizeHeight / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: myLinearGradient),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${user1.name} ${user1.surname}",
                                  style: textWhiteColor14styleBold),
                              Text("${user1.id}", style: textWhiteColor14style),
                              Text(
                                lang!.chest,
                                style: textYellowColor14style,
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                appState.updateSelectedIndex(3);
                              });
                            },
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage(user1.imagePath),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              flex: 1,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  RegionalWorkButton(title: lang.shoulder),
                  const SizedBox(width: 20),
                  RegionalWorkButton(title: lang.arm),
                  const SizedBox(width: 20),
                  RegionalWorkButton(title: lang.chest),
                  const SizedBox(width: 20),
                  RegionalWorkButton(title: lang.leg),
                  const SizedBox(width: 20),
                  RegionalWorkButton(title: lang.wrist),
                  const SizedBox(width: 20),
                  RegionalWorkButton(title: lang.dynamism),
                  const SizedBox(width: 20),
                  RegionalWorkButton(title: lang.nutrition),
                  const SizedBox(width: 20),
                  RegionalWorkButton(title: lang.cardio),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              flex: 14,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Card(
                    child: SizedBox(
                      height: 300,
                      width: 200,
                      child: Stack(fit: StackFit.passthrough, children: [
                        Image.asset(
                          "assets/images/img${index + 1}.jpg",
                          fit: BoxFit.cover,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Card(
                                color: themeProvider.isDark
                                    ? listItemDarkColor
                                    : listItemLightColor.withAlpha(50),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "$index ${lang.name}",
                                      style: themeProvider.isDark
                                          ? textWhiteColor14style
                                          : textBlackStyle14style,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      height: 32,
                                      width: 2, // Çizgi kalınlığı
                                      color: themeProvider.isDark
                                          ? textWhiteColor
                                          : textBlackColor,
                                    ),
                                    Text(
                                      "$index",
                                      style: themeProvider.isDark
                                          ? textWhiteColor14style
                                          : textBlackStyle14style,
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        color: themeProvider.isDark
                                            ? textWhiteColor
                                            : textBlackColor,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration:
                              BoxDecoration(gradient: myLinearGradient2),
                        ),
                      ]),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RegionalWorkButton extends StatelessWidget {
  String title;
  RegionalWorkButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: themeProvider.isDark
                ? buttonColorRed
                : buttonColorWhite.withGreen(233),
            foregroundColor:
                themeProvider.isDark ? buttonColorWhite : buttonColorRed),
        onPressed: () {},
        child: Text(title));
  }
}
