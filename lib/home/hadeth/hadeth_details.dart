import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/settingprovider/providersetting.dart';
import 'package:provider/provider.dart';
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
    SettingProvider provider = Provider.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            provider.cuurrenttheme==ThemeMode.light?
            'assets/images/default_bg.png':'assets/images/dark_bg.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${arg.title}',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 40, 8, 4),
            child: Text(
              '${arg.content}',
              style: Theme.of(context).textTheme.subtitle1,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
