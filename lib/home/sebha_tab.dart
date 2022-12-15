import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/settingprovider/providersetting.dart';
import 'dart:math' as math;

import 'package:provider/provider.dart';

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
    SettingProvider provider = Provider.of(context);
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 1, 1, 180),
                  child: Image.asset(
                    provider.cuurrenttheme == ThemeMode.light
                        ? 'assets/images/head_sebha_logo.png'
                        : 'assets/images/head_sebha_dark.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 100, 1, 1),
                  child: AnimatedRotation(
                    turns: turn,
                    duration: const Duration(seconds: 1),
                    child: Image.asset(provider.cuurrenttheme == ThemeMode.light
                        ? 'assets/images/body_sebha_logo.png'
                        : 'assets/images/body_sebha_dark.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 20, 1, 4),
              child: Text(
                'عدد التسبيحات',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(1, 20, 1, 25),
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                  color: provider.cuurrenttheme == ThemeMode.light
                      ? MyThemeData.secondaryColor
                      : MyThemeData.primaryColorDark,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  ' $counter ',
                  style: Theme.of(context).textTheme.headline1,
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
              child: Text('${azkar[x]}',
                  style: Theme.of(context).textTheme.subtitle2),
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0.0),
                backgroundColor: MaterialStatePropertyAll(
                    provider.cuurrenttheme == ThemeMode.light
                        ? MyThemeData.secondaryColor
                        : MyThemeData.secondaryColorDark),
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.fromLTRB(20, 8, 20, 8)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
