import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Aheadeth_Details/ahadeth_details.dart';
import 'hadeth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class AhadethTab extends StatefulWidget {

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Expanded(
            child: Image.asset("assets/images/hadith_header.png")),
        Divider(),
        Text(AppLocalizations.of(context)!.ahadeth
          ,style: Theme.of(context).textTheme.titleMedium,),
        Divider(),
        Expanded(
          flex: 2,
          child: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AhadethDetails.routeName,
                      arguments: ahadethList[index]
                  );
                },
                child: Text(
                  ahadethList[index].titles,
                   textAlign: TextAlign.center,
                   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                     fontWeight: FontWeight.w400
                   ),
                ),
              ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: ahadethList.length
          ),
        )
      ]
    );
  }

  List<Hadeth> ahadethList=[];

  readAhadeth() async {
    String fileContent = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadethData = fileContent.split("#");

    for (int i = 0; i < ahadethData.length ; i++)
    {
        List<String> ahadethLines = ahadethData[i].trim().split("\n");
        String ahatethTitle = ahadethLines[0];
        ahadethLines.removeAt(0);
        String ahadethContent = ahadethLines.join(" ");
        ahadethList.add(Hadeth(content: ahadethContent, titles: ahatethTitle));
      }
    setState(() {

    });
  }
  @override
  void initState() {
    super.initState();
    readAhadeth();
  }
}
