import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/radio_bg.png'),
          SizedBox(
            height: 50,
          ),
          Text(
            'اذاعة القرأن الكريم',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 70,
          ),
          Image.asset(
            'assets/images/radio_comp.png',
          ),
        ],
      ),
    );
  }
}
