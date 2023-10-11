import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_gym_app/constants/color.dart';
import 'package:my_gym_app/provider/app_state_provider.dart';
import 'package:my_gym_app/provider/my_theme_provider.dart';
import 'package:my_gym_app/screens/favorites_screen/favorite_screen.dart';
import 'package:my_gym_app/screens/main_page.dart';
import 'package:my_gym_app/screens/profile/profile.dart';
import 'package:my_gym_app/screens/search_screen/search_screen.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    FavoriteScreen(),
    SearchScreen(),
    Profile(),
  ];

  void isDarkControl() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final appState = Provider.of<AppState>(context);
    var lang = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(lang!.app),
        actions: [
          IconButton(
              onPressed: themeProvider.toggleTheme,
              icon: themeProvider.isDark
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode))
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(appState.selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          color: themeProvider.isDark ? Colors.black : Colors.white,
          child: GNav(
            rippleColor:
                themeProvider.isDark ? Colors.black38 : Colors.grey[300]!,
            hoverColor:
                themeProvider.isDark ? Colors.black12 : Colors.grey[100]!,
            gap: 8,
            activeColor: themeProvider.isDark ? Colors.black : Colors.black,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 300),
            tabBackgroundColor:
                themeProvider.isDark ? Colors.grey[500]! : Colors.grey[300]!,
            color: themeProvider.isDark ? Colors.grey : Colors.black,
            backgroundColor: themeProvider.isDark ? Colors.black : Colors.white,
            tabs: [
              GButton(
                icon: Icons.home,
                text: lang.home,
              ),
              GButton(
                icon: Icons.favorite,
                text: lang.likes,
              ),
              GButton(
                icon: Icons.search,
                text: lang.search,
              ),
              GButton(
                icon: Icons.person,
                text: lang.profile,
              ),
            ],
            selectedIndex: appState.selectedIndex,
            onTabChange: (index) {
              setState(() {
                appState.selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
