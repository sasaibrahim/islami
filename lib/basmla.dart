import 'package:flutter/material.dart';

class Basmla extends StatelessWidget {
  const Basmla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'بسم الله الرحمن الرحيم',
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
