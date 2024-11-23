import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/SelectedItem.dart';
import 'package:islami_app/home/tabs/unSelectedItem.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(title: "English"),
          SizedBox(height: 10,),
          UnSelectedItem(title: "العربية"),
        ],
      ),
    );
  }
}
