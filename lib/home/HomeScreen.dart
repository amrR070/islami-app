import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/AhadethTab.dart';
import 'package:islami_app/home/tabs/QouranTab.dart';
import 'package:islami_app/home/tabs/RadioTab.dart';
import 'package:islami_app/home/tabs/SebhaTab.dart';

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
    RadioTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
          fit: BoxFit.fill,
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
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
              label: "Quran",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(
            AssetImage("assets/images/ahadeth_icn@x1.png"),),
              label: "Ahadeth",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(
            AssetImage("assets/images/sebha_icn.png"),),
              label: "Tasbeh",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(
            AssetImage("assets/images/radio_icn.png"),),
              label: "Radio",
            ),
          ],
        ),
        body: tabs[currentIndex],
      ),
    );
  }
}
