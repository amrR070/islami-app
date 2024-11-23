import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectedItem extends StatelessWidget {
  String title;
   SelectedItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.bodySmall),
        Spacer(),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.tertiary,
        )
      ],
    );
  }
}