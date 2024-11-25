
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: height * 0.16,
          ),
          Image.asset("assets/images/radio.png"),
          SizedBox(
            height: height * 0.06,
          ),
          Text("اذاعة القران الكريم",
            style: Theme.of(context).textTheme.titleMedium,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.18,
                width: width * 0.15,
                child: IconButton(onPressed: () {}, icon:Icon(
                  Icons.skip_previous_rounded,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 40,
                ) ),
              ),

              SizedBox(
                height: height * 0.18,
                width: width * 0.30,
                child: IconButton(onPressed: () {}, icon:Icon(
                  Icons.play_arrow_rounded,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 75,
                ) ),
              ),

              SizedBox(
                height: height * 0.18,
                width: width * 0.15,
                child: IconButton(onPressed: () {}, icon:Icon(
                  Icons.skip_next_rounded,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 40,
                ) ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
