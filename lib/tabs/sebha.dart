import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({Key? key}) : super(key: key);

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/images/sebha_bg.png'),
            SizedBox(
              height: 10,
            ),
            Text('عدد التسبيحات'),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Text(' $counter1'),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          )),
                      onPressed: incrementCounter1,
                      child: Text('سبحان اللة ')),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(' $counter2'),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          )),
                      onPressed: incrementCounter2,
                      child: Text(' اللة اكبر')),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(' $counter3'),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          )),
                      onPressed: incrementCounter3,
                      child: Text('الحمد للة ')),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(' $counter4'),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          )),
                      onPressed: incrementCounter4,
                      child: Text('استغفر اللة ')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void incrementCounter1() {
    setState(() {
      counter1++;
    });
  }

  void incrementCounter2() {
    setState(() {
      counter2++;
    });
  }

  void incrementCounter3() {
    setState(() {
      counter3++;
    });
  }

  void incrementCounter4() {
    setState(() {
      counter4++;
    });
  }
}
