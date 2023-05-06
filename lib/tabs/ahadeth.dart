import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth_model.dart';
import 'package:islami/tabs/hadeth_details.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  static const String routeName = 'ahadeth';
  List<HadethModel> Allahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Allahadeth.isEmpty) {
      loadFile();
    }
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/ahadeth_bg.png'),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
                endIndent: 35,
                indent: 35,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routeName,
                        arguments: Allahadeth[index]);
                  },
                  child: Text(
                    Allahadeth[index].title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                );
              },
              itemCount: Allahadeth.length,
            ),
          )
        ],
      ),
    );
  }

//////method to split the file to (title ,content)///////
  ///// repositry//////
  void loadFile() {
    rootBundle.loadString('assets/files/ahadeth .txt').then((value) {
      List<String> AhadethContent = value.split('#');
      /////iteration/////
      for (int i = 0; i < AhadethContent.length; i++) {
        int LastIndexOfFirstLine = AhadethContent[i].trim().indexOf('\n');
        String title =
            AhadethContent[i].trim().substring(0, LastIndexOfFirstLine);
        String content =
            AhadethContent[i].trim().substring(LastIndexOfFirstLine + 1);
        HadethModel hadethmodel = HadethModel(title, content);
        Allahadeth.add(hadethmodel);
      }
      setState(() {});
    }).catchError((error) {
      print(error);
    });
  }
}
// List<String>HadethLines=AhadethContent[i].trim().split('\n');
// String title=HadethLines[0];
// HadethLines.removeAt(0);
//  List<String>content=HadethLines;
//  HadethModel hadethmodel=HadethModel(title, content);
//  Allahadeth.add(hadethmodel);
