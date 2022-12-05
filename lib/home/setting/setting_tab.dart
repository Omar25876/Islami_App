import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/setting/languagebottomsheet.dart';
import 'package:islami/home/setting/themebottomsheet.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/settingprovider/providersetting.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SettingTab extends StatefulWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
    @override
  Widget build(BuildContext context) {
      SettingProvider provider = Provider.of(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 60, 18, 18),
            child: Text(AppLocalizations.of(context)!.language,style: Theme.of(context)!.textTheme.headline1,),
          ),
          InkWell(
            onTap: (){

              showlanguagebottomsheet();

            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 8),
              margin: EdgeInsets.all(12),
              color: Colors.white,
              child: Row(
                children: [
                  Text(provider.currentlocal=="en" ? 'English': 'العربية',style: Theme.of(context)!.textTheme.subtitle1),
                  Spacer(),
                  Icon(Icons.arrow_downward,size: 35,),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(18),
            child: Text(AppLocalizations.of(context)!.mode,style: Theme.of(context)!.textTheme.headline1,),
          ),
          InkWell(
            onTap: (){

              showthemebottomsheet();

            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 8),
              margin: EdgeInsets.all(12),
              color: Colors.white,
              child: Row(
                children: [
                  Text(provider.cuurrenttheme==ThemeMode.light ? AppLocalizations.of(context)!.light
                      : AppLocalizations.of(context)!.dark,style: Theme.of(context)!.textTheme.subtitle1),
                  Spacer(),
                  Icon(Icons.arrow_downward,size: 35,),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

  void showlanguagebottomsheet(){
    showModalBottomSheet(context: context, builder: (context){
      return languagebottomsheet();
    });
  }

  void showthemebottomsheet(){
    showModalBottomSheet(context: context, builder: (context){
      return themebottomsheet();
    });
  }
}
