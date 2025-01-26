
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/SettingsProviders.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {

  double angle =0;
  int counter = 0;
  int index = 0;
  List<String> azkar = [
    "سبحان الله",
    "الحمد الله",
    "الله اكبر ",
   "لا اله الا الله",
    "لا حول ولا قوة الا بالله"
  ];
  @override
  Widget build(BuildContext context) {
    SettingsProviders settingsProviders = Provider.of<SettingsProviders>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.1,
                ),
                child: Image.asset(
                    settingsProviders.themeMode == ThemeMode.dark
                    ?"assets/images/head of seb7a dark.png"
                    :"assets/images/head of seb7a.png",),
              ),
              Padding(
                padding: EdgeInsets.only(
              top: height * 0.04,
              ),
                child: GestureDetector(
                  onTap: () {
                    tasbeh();
                  },
                  child: Transform.rotate(
                    angle: angle,
                    child: Image.asset(settingsProviders.themeMode == ThemeMode.dark
                        ?"assets/images/body of seb7a dark.png"
                        :"assets/images/body of seb7a.png",
                      height: height * 0.35,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text("عدد التسبيحات",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Container(
            width: width * 0.17,
            height: height * 0.1,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.57),
              borderRadius: BorderRadius.circular(26),

            ),
            child: Center(
              child: Text(
              counter.toString(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 25
              ),

              ),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  tasbeh();
                },
                child: Container(
                  width: width * 0.4,
                  height: height * 0.06,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(25),

                  ),
                  child: Center(
                    child: Text(azkar[index],
                      style: Theme.of(context).textTheme.bodyLarge,

                    ),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              InkWell(
                onTap: () {
                  reload();
                },
                child: Container(
                  width: width * 0.1,
                  height: height * 0.06,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(25),

                  ),
                  child: Center(
                    child: Icon(
                      Icons.refresh,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void tasbeh(){
    if (counter < 33)
      {
      counter++;
    }
    else
      {
        counter = 0;
        index++;
        if(index == azkar.length)
          {
            index =0;
          }
      }
    angle += 10;
    setState(() {

    });
  }
  void reload(){
    counter = 0;
    index = 0;
    setState(() {

    });
  }
}
