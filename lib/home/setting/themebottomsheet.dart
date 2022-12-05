

import 'package:flutter/material.dart';
import 'package:islami/settingprovider/providersetting.dart';
import 'package:provider/provider.dart';

class themebottomsheet extends StatelessWidget {
  themebottomsheet({Key? key}) : super(key: key);

  static String routeName = 'themebottomsheet';


  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.changecurrenttheme(ThemeMode.light);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Text('Light',style: Theme.of(context)!.textTheme.subtitle1,),
            ),
          ),

          InkWell(
            onTap: (){
              provider.changecurrenttheme(ThemeMode.dark);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Text('Dark',style: Theme.of(context)!.textTheme.subtitle1,),
            ),
          ),
        ],
      ),
    );
  }
}
