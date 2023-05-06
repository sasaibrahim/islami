import 'package:flutter/material.dart';
import 'package:islami/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'ahadethdetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Theme.of(context).colorScheme.brightness == Brightness.dark
                  ? 'assets/images/dark_bg.png'
                  : 'assets/images/main_bg.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          body: Container(
            child: Card(
              margin: EdgeInsets.all(12),
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                  side: BorderSide(color: Theme.of(context).primaryColor)),
              child: Text(
                args.content,
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ));
  }
}
