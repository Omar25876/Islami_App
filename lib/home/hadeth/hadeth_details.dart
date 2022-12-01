import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme_data.dart';
import 'hadeth_tab.dart';

class HadethDetail extends StatefulWidget {
  static String routeName = 'Hadeth Detail';

  @override
  State<HadethDetail> createState() => _HadethDetailState();
}

class _HadethDetailState extends State<HadethDetail> {


  @override
  Widget build(BuildContext context) {
    Hadethcon arg = ModalRoute.of(context)?.settings.arguments as Hadethcon;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png',),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar:AppBar(
          title: Text('${arg.title}',style: Theme.of(context).textTheme.headline1,),
        ),

        body: arg.content.length == 0 ?
        Center(
          child: CircularProgressIndicator(
            color: MyThemeData.secondaryColor,
          ),
        ):
        ListView.separated(
            separatorBuilder: (context,index) => Divider(thickness: 2,color: MyThemeData.secondaryColor,),
            itemCount: arg.content.length,
            itemBuilder:(context,index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('${arg.content}',
                  style: Theme.of(context).textTheme.subtitle1,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              );
            }
        ),
      ),
    );
  }

}

