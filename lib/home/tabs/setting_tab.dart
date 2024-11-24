import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/themeBottomSheet.dart';
import 'package:provider/provider.dart';

import '../../providers/SettingsProviders.dart';
import 'LanguageBottomSheet.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProviders settingsProviders = Provider.of<SettingsProviders>(context);
    return Container(
      margin : EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language, style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
              showModalBottomSheet(context: context,
                builder: (context) {
                return LanguageBottomSheet();
                },);
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Theme.of(context).colorScheme.tertiary,
                  width: 2,
                )
              ),
              child: Text(settingsProviders.language == "ar"
                  ?"العربية"
                  :"English",
                style: TextStyle(
                  fontSize: 25,
              ),),
            ),
          ),
          SizedBox(height: 20,),
          Text(AppLocalizations.of(context)!.theme, style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Theme.of(context).colorScheme.tertiary,
                  width: 2,
                )
            ),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(context: context,
                  builder: (context) {
                    return ThemeBottomSheet();
                  },);
              },
              child: Text(settingsProviders.themeMode == ThemeMode.dark
                  ?AppLocalizations.of(context)!.dark
                  :AppLocalizations.of(context)!.light,
                style: TextStyle(
                fontSize: 25,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
