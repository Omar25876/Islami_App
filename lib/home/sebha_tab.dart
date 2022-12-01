import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:[
          Stack(children:[
            Image.asset('assets/images/head_sebha_logo.png'),
            Image.asset('assets/images/body_sebha_logo.png'),
      ] ),

          Container(
            margin: EdgeInsets.fromLTRB(1, 80, 1, 20),
            decoration: BoxDecoration(
              color: MyThemeData.secondaryColor,
              border: Border.all(),
            ),
              child: Text(' 30 ',style: Theme.of(context).textTheme.subtitle1,)
          ),

          ElevatedButton(onPressed: (){}, child: Text('سبحان الله')),
        ],
      ),
    );
  }
}
