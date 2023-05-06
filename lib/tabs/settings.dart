import 'package:flutter/material.dart';
import 'package:islami/showlanguagebotton.dart';
import 'package:islami/showthemebotton.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theming'),
          SizedBox(
            height: 4,
          ),
          InkWell(
            onTap: () {
              showThemeSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.white10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'light',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Language'),
          SizedBox(
            height: 4,
          ),
          InkWell(
            onTap: () {
              showLanguageSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.white10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'English',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showLanguageSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowLanguageBottomSheet();
        });
  }

  void showThemeSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowThemeBottomSheet();
        });
  }
}
