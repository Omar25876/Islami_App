import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme_data.dart';

class SuraContent extends StatefulWidget {
  static String routeName = 'Sura Content';

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> ayaat = [];

  @override
  Widget build(BuildContext context) {
    SuraContentArgs args = ModalRoute.of(context)?.settings.arguments as SuraContentArgs;
    if(ayaat.isEmpty){
      loadfile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png',),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
      appBar:AppBar(
      title: Text('${args.suraname}',style: Theme.of(context).textTheme.headline1,),
    ),

        body: ayaat.length == 0 ?
        Center(
          child: CircularProgressIndicator(
            color: MyThemeData.secondaryColor,
          ),
        ):
        ListView.separated(
          separatorBuilder: (context,index) => Divider(thickness: 2,color: MyThemeData.secondaryColor,),
          itemCount: ayaat.length,
            itemBuilder:(context,index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('${ayaat[index]} (${index+1})',
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

  void loadfile(int index) async{
    String content = await rootBundle.loadString('assets/files_quran/${index+1}.txt');
    List<String> lines = content.split('\n');
    ayaat = lines;
    setState(() {
      
    });
  }
}

class SuraContentArgs {
  String suraname;
  int index;
  SuraContentArgs(this.suraname,this.index);
}
