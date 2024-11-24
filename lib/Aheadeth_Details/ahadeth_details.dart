import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/hadeth.dart';
import 'package:provider/provider.dart';

import '../providers/SettingsProviders.dart';
import '../style/AppStyle.dart';

class AhadethDetails extends StatelessWidget {
  static const routeName="AhadethDetails";
  const AhadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProviders settingsProviders = Provider.of<SettingsProviders>(context);
    Hadeth args = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                settingsProviders.themeMode == ThemeMode.dark
                ?"assets/images/home_dark_background.png"
                :"assets/images/background.png"),
            fit: BoxFit.fill,
          )
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(args.titles),),
        body: Column(
          children: [
            Expanded(
              child: Card(
                child: SingleChildScrollView(
                    child: Text(args.content, style:Theme.of(context).textTheme.bodyMedium,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
