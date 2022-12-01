import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'dart:math' as math;

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab>
    with SingleTickerProviderStateMixin {
  int counter = 0;
  int x = 0;
  double turn = 0.0;
  List<String> azkar = [
    'سبحان الله',
    'الحمدالله',
    'لا اله الا الله',
    'الله أكبر'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 1, 1, 180),
                  child: Image.asset('assets/images/head_sebha_logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 100, 1, 1),
                  child: AnimatedRotation(
                    turns: turn,
                    duration: Duration(seconds: 1),
                    child: Image.asset('assets/images/body_sebha_logo.png'),
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.fromLTRB(1, 50, 1, 25),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                  color: MyThemeData.secondaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  ' $counter ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            ElevatedButton(
                onPressed: () {
                  if (counter < 33) {
                    counter++;
                  } else {
                    counter = 0;
                    if (x < 3) {
                      x++;
                    } else {
                      x = 0;
                    }
                  }
                  setState(() {
                    turn += 1 / 32;
                  });
                },
                child: Text('${azkar[x]}',style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              style: ButtonStyle(
                elevation: MaterialStatePropertyAll(0.0),
                backgroundColor: MaterialStatePropertyAll(MyThemeData.secondaryColor),
                padding: MaterialStatePropertyAll(EdgeInsets.fromLTRB(20, 8, 20, 8)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
