import 'package:flutter/material.dart';

class SuraName extends StatelessWidget {
 String sura ;

 SuraName({required this.sura});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          '$sura',style: Theme.of(context).textTheme.subtitle1,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
