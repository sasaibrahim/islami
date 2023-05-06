import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/sura_args.dart';

class SuraContent extends StatefulWidget {
  static const String routeName = 'suracontent';

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
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
                args.suraname,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            body: verses.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ))
                : Card(
                    margin: EdgeInsets.all(12),
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                        side:
                            BorderSide(color: Theme.of(context).primaryColor)),
                    child: ListView(
                      children: [
                        RichText(
                            textDirection: TextDirection.rtl,
                            textAlign: verses.length <= 20
                                ? TextAlign.center
                                : TextAlign.justify,
                            text: TextSpan(children: [
                              for (var i = 0; i < verses.length; i++) ...{
                                TextSpan(
                                    text: '${verses[i]}',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium),
                                TextSpan(
                                  text: '\u06dd${i + 1}',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              }
                            ]))
                      ],
                    ),
                  )));
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = sura.split('\n');
    verses = lines;

    setState(() {});
  }
}
