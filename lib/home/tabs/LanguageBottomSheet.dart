import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/SelectedItem.dart';
import 'package:islami_app/home/tabs/unSelectedItem.dart';
import 'package:islami_app/providers/SettingsProviders.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProviders settingsProviders = Provider.of<SettingsProviders>(context);
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(title: settingsProviders.language == "ar"
              ?"العربية"
              :"English"),
          SizedBox(height: 10,),
          InkWell(
              onTap: () {
                if(settingsProviders.language == "ar")
                {
                  settingsProviders.changeLanguage("en");
                }
                else
                {
                  settingsProviders.changeLanguage("ar");
                }
                Navigator.of(context).pop();
              },
              child: UnSelectedItem(title: settingsProviders.language == "ar"
              ?"English"
              :"العربية")),
        ],
      ),
    );
  }
}
