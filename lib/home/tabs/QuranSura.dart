import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/quran_details/QuranDetails.dart';

class QuranSura extends StatelessWidget {
  String suraName;
  int suraNumber;
  int index;
   QuranSura({
     required this.suraName,
     required this.suraNumber,
     required this.index
   });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
            QuranDetails.routeName,
            arguments: QuranDetailsArguments(
              index: index,
              name: suraName
            )
        );
      },
      child: Row(
        children: [
          Expanded(
            child:  Text(
              suraName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600
              ),),
          ),
          Container(
            height: height * 0.06,
            child: VerticalDivider(
              color: Theme.of(context).colorScheme.primary,
              thickness: 3,
            ),
          ),
          Expanded(
            child:  Text(
              suraNumber.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25
              ),),
          ),
        ],
      ),
    );
  }
}
