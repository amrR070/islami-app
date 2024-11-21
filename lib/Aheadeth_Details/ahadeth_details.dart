import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/hadeth.dart';

class AhadethDetails extends StatelessWidget {
  static const routeName="AhadethDetails";
  const AhadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill,
          )
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(args.titles),),
        body: Column(
          children: [
            Expanded(
              child: Card(
                child: SingleChildScrollView(
                    child: Text(args.content, style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                    ),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
