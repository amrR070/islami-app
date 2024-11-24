import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProviders extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light;
  String language = "en";

  SettingsProviders(){
    getMode();
    getLanguage();
  }

  changeTheme(ThemeMode newTheme){
    if (newTheme == themeMode)
      {
        return;
      }
    else
      {
        themeMode = newTheme;
      }
    saveMode(themeMode);
    notifyListeners();
  }

  changeLanguage(String newLanguage){
    if (newLanguage == language)
    {
      return;
    }
    else
    {
      language = newLanguage;
    }
    saveLanguage(language);
    notifyListeners();
  }

  void saveMode(ThemeMode theme) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (theme == ThemeMode.light)
      {
        prefs.setString("theme", "light");
      }
    else
      {
        prefs.setString("theme", "dark");
      }
  }
  void getMode() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String cashTheme = prefs.getString("theme") ?? "light";
    if (cashTheme == ThemeMode.light)
      {
        themeMode = ThemeMode.light;
      }
    else
      {
        themeMode = ThemeMode.dark;
      }
    notifyListeners();
  }

  void saveLanguage(String lang) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (lang == "en")
      {
        prefs.setString("language", "en");
      }
    else
      {
        prefs.setString("language", "ar");
      }
  }
  void getLanguage() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String cashLanguage = prefs.getString("language") ?? "en";
    if (cashLanguage == "en")
      {
        language = "en";
      }
    else
      {
        language = "ar";
      }
    notifyListeners();
  }
}