import 'package:flutter/material.dart';
import 'package:islami/homescreen.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/sura_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          SuraContent.routeName: (context) => SuraContent(),
        });
  }
}
