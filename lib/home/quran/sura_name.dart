import 'package:flutter/material.dart';
import 'package:islami/home/quran/sura_content.dart';

class SuraName extends StatelessWidget {
  String sura;
  int index;

  SuraName({required this.sura, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraContent.routeName,
            arguments: SuraContentArgs(sura, index));
      },
      child: Center(
        child: Text(
          '$sura',
          style: Theme.of(context).textTheme.headline1,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
