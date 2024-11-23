
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuraVerses extends StatelessWidget {
  String verses ;
  int versesNumber;
   SuraVerses({required this.verses,required this.versesNumber});

  @override
  Widget build(BuildContext context) {
    return Text(

      "$verses ($versesNumber)",
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.bodyMedium,


    );
  }
}
