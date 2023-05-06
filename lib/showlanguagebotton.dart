import 'package:flutter/material.dart';
import 'package:islami/provider/myprovider.dart';
import 'package:provider/provider.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  const ShowLanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return Column(
      children: [
        InkWell(
          onTap: () {
            pro.changeLanguage("en");
          },
          child: Row(
            children: [
              Text(
                'English',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Spacer(),
              Icon(
                Icons.done,
                color: Theme.of(context).primaryColor,
                size: 30,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            pro.changeLanguage("ar");
          },
          child: Row(
            children: [
              Text(
                'Arabic',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Spacer(),
              Icon(
                Icons.done,
                color: Colors.black54,
                size: 30,
              ),
            ],
          ),
        )
      ],
    );
  }
}
