import 'package:flutter/material.dart';
import 'package:islami/sura_args.dart';

class SuraContent extends StatelessWidget {
  static const String routeName = 'suracontent';

  @override
  Widget build(BuildContext context) {
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/main_bg.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.suraname,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
