import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/SelectedItem.dart';
import 'package:islami_app/home/tabs/unSelectedItem.dart';
import 'package:provider/provider.dart';
import '../../providers/SettingsProviders.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProviders settingsProviders = Provider.of<SettingsProviders>(context);
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(title: settingsProviders.themeMode == ThemeMode.dark
          ?AppLocalizations.of(context)!.dark
          :AppLocalizations.of(context)!.light,),
          SizedBox(height: 10,),
          InkWell(
              onTap: () {
                if(settingsProviders.themeMode == ThemeMode.light)
                  {
                    settingsProviders.changeTheme(ThemeMode.dark);
                  }
                else
                  {
                    settingsProviders.changeTheme(ThemeMode.light);
                  }
                Navigator.of(context).pop();
              },
              child: UnSelectedItem(title: settingsProviders.themeMode == ThemeMode.dark
                  ?AppLocalizations.of(context)!.light
                  :AppLocalizations.of(context)!.dark,)),
        ],
      ),
    );
  }
}
