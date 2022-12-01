import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio_tab.dart';
import 'package:islami/home/sebha_tab.dart';
import 'package:islami/my_theme_data.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static String routeName = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<Widget> tabs =
  [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png',),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar:AppBar(
          title: Text('Islami',style: Theme.of(context).textTheme.headline1,),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap:  (index) {
            currentIndex = index;
            setState(() {

            });
          },
            items:
            [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png'),
                  size: 40,
                  ),
                  backgroundColor: MyThemeData.secondaryColor,
                  label: 'Quran'
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png',) ,
                    size: 40,
                      ),
                  backgroundColor: MyThemeData.secondaryColor,
                  label: 'Hadeth'
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png',),  size: 40,
                  ),
                  backgroundColor: MyThemeData.secondaryColor,
                  label: 'Sebha'
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png',),  size: 40,
                  ),
                  backgroundColor: MyThemeData.secondaryColor,
                  label: 'Radio'
              ),
            ]
        ),

        body: tabs[currentIndex],
      ),
    );
  }
}
