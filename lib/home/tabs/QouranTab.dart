
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/QuranSura.dart';

class QuranTab extends StatelessWidget {

  List<String> suraNames = [
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];
  List<int> versesNumber = [7,286,200,176,120,165,206,75,129,109,123,111,43,52,99,128,111,110,98,135,112,78,118,64,77,227,93,88,
    69,60,34,30,73,54,45,83,182,88,75,85,54,53,89,59,37,35,38,29,18,45,60,49,62,55,78,96,29,22,24,13,14,11,11,18,12,12,30,52,52,
    44,28,28,20,56,40,31,50,40,46,42,29,19,36,25,22,17,19,26,30,20,15,21,11,8,5,19,5,8,8,11,11,8,3,9,5,4,6,3,6,3,5,4,5,6
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Image.asset("assets/images/quran_header_icn.png"),
        Divider(height: 0,),
         Row(
          children: [
            Expanded(
              child:  Text(
                textAlign: TextAlign.center,
                "Sura Name",
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
                "Verses Number",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25
              ),),
            ),
          ],
        ),
        const Divider(height: 0,),
        Expanded(
          flex: 2,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return  QuranSura(
                  suraName: suraNames[index],
                  suraNumber: versesNumber[index],
                  index: index,
                );
              },
              separatorBuilder:  (context, index) {
                return Divider(height: 0,);
              },
              itemCount: 114
          ),
        )
      ],
    );
  }
}
