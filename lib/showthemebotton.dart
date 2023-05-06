import 'package:flutter/material.dart';
import 'package:islami/provider/myprovider.dart';
import 'package:provider/provider.dart';

class ShowThemeBottomSheet extends StatefulWidget {
  const ShowThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ShowThemeBottomSheet> createState() => _ShowThemeBottomSheetState();
}

class _ShowThemeBottomSheetState extends State<ShowThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return Column(
      children: [
        InkWell(
          onTap: () {
            pro.changeTheme(ThemeMode.light);
          },
          child: Row(
            children: [
              Text(
                'Light',
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
            pro.changeTheme(ThemeMode.dark);
          },
          child: Row(
            children: [
              Text(
                'Dark',
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
