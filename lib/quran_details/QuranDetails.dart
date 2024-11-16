import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/quran_details/SuraVerses.dart';

class QuranDetails extends StatefulWidget {
  static const routeName = "quranDetails";
   QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  @override
  Widget build(BuildContext context) {
    QuranDetailsArguments args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArguments;
    loadfile(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill,
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: Card(
          margin: EdgeInsets.all(20),
          color: Colors.white,
          surfaceTintColor: Colors.white,
          child: lines.isEmpty
              ?Center(child: CircularProgressIndicator())
              :ListView.separated(
              itemBuilder: (context, index) {
                return SuraVerses(
                  verses: lines[index],
                  versesNumber: index+1,
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: lines.length
          ),
        ),
        ),

    );

  }

  List<String> lines =[];

  loadfile(int index)
  async{
    String suraContent = await rootBundle.loadString("assets/files/${index +1}.txt");
    lines = suraContent.split("\n");
    print(suraContent);
    setState(() {

    });
  }
}
class QuranDetailsArguments{
  String name;
  int index;
  QuranDetailsArguments({required this.index, required this.name});
}
