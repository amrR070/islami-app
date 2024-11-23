import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/AhadethTab.dart';
import 'package:islami_app/home/tabs/QouranTab.dart';
import 'package:islami_app/home/tabs/RadioTab.dart';
import 'package:islami_app/home/tabs/SebhaTab.dart';
import 'package:islami_app/home/tabs/setting_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../style/AppStyle.dart';

class HomeScreen extends StatefulWidget {
  static const String routname = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppStyle.isDark
                ?"assets/images/home_dark_background.png"
                :"assets/images/background.png"
            ),
          fit: BoxFit.fill,
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {

            });
            currentIndex = value;
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(
            AssetImage("assets/images/quran_icn@1x.png"),),
              label: AppLocalizations.of(context)!.quran,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(
            AssetImage("assets/images/ahadeth_icn@x1.png"),),
              label:AppLocalizations.of(context)!.ahadeth,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(
            AssetImage("assets/images/sebha_icn.png"),),
              label:AppLocalizations.of(context)!.sebha,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(
            AssetImage("assets/images/radio_icn.png"),),
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: Icon(
                Icons.settings
              ),
              label:AppLocalizations.of(context)!.settings,
            ),
          ],
        ),
        body: tabs[currentIndex],
      ),
    );
  }
}
