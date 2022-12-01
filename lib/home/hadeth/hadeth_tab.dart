import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/hadeth/hadeth_model.dart';
import 'package:islami/my_theme_data.dart';

class HadethTab extends StatefulWidget {
  static String routeName = 'Hadeth Tab';

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadethcon> ahadethModels= [];

  @override
  Widget build(BuildContext context) {
    if(ahadethModels.isEmpty)
    {
      readHadethFile();
    }
    return Column(
      children:[
        Image.asset('assets/images/hadeth_logo.png'),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context,index)=>Divider(thickness: 3,color: MyThemeData.secondaryColor),
            itemCount: ahadethModels.length ,
            itemBuilder: (context,index){
              return HadethModel(ahadethModels[index]);
            },
          ),
        ),
      ],
    );
  }

  void readHadethFile() async{
    String fileContent = await rootBundle.loadString('assets/files_quran/ahadeth.txt');
    List<String> ahadeth = fileContent.split('#\r\n');
    for(int i = 0 ; i < ahadeth.length ; i++){
      print(ahadeth.length);
      List<String> singleHadethLines = ahadeth[i].split("\n");
      String title = singleHadethLines[0];
      singleHadethLines.removeAt(0);
      String content = singleHadethLines.join();
      ahadethModels.add(Hadethcon(title: title, content: content));
    }
    setState(() {

    });
  }
}
class Hadethcon{
  String title;
  String content;
  Hadethcon({required this.title,required this.content});
}
