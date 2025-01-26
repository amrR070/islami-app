import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnSelectedItem extends StatelessWidget {
  String title;
  UnSelectedItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
