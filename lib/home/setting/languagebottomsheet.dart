

import 'package:flutter/material.dart';
import 'package:islami/settingprovider/providersetting.dart';
import 'package:provider/provider.dart';

class languagebottomsheet extends StatelessWidget {
   languagebottomsheet({Key? key}) : super(key: key);
  static String routeName = 'languagebottomsheet';
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return  Container(
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.changecurrentlocal("en");
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Text('English',style: Theme.of(context)!.textTheme.subtitle1,),
            ),
          ),

          InkWell(
            onTap: (){
              provider.changecurrentlocal("ar");
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Text('العربيه',style: Theme.of(context)!.textTheme.subtitle1,),
            ),
          ),
        ],
      ),
    );
  }
}
