import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/settingprovider/providersetting.dart';
import 'package:provider/provider.dart';

class SuraContent extends StatefulWidget {
  static String routeName = 'Sura Content';

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> ayaat = [];

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    SuraContentArgs args =
        ModalRoute.of(context)?.settings.arguments as SuraContentArgs;
    if (ayaat.isEmpty) {
      loadfile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            provider.cuurrenttheme == ThemeMode.light
                ? 'assets/images/default_bg.png'
                : 'assets/images/dark_bg.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.suraname}',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        body: ayaat.length == 0
            ? Center(
                child: CircularProgressIndicator(
                  color: provider.cuurrenttheme == ThemeMode.light
                      ? MyThemeData.secondaryColor
                      : MyThemeData.secondaryColorDark,
                ),
              )
            : Padding(
                padding: const EdgeInsets.fromLTRB(1, 25, 1, 1),
                child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                        thickness: 2,
                        color: provider.cuurrenttheme == ThemeMode.light
                            ? MyThemeData.secondaryColor
                            : MyThemeData.secondaryColorDark),
                    itemCount: ayaat.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '${ayaat[index]} (${index + 1})',
                          style: Theme.of(context).textTheme.subtitle1,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        ),
                      );
                    }),
              ),
      ),
    );
  }

  void loadfile(int index) async {
    String content =
        await rootBundle.loadString('assets/files_quran/${index + 1}.txt');
    List<String> lines = content.split('\n');
    ayaat = lines;
    setState(() {});
  }
}

class SuraContentArgs {
  String suraname;
  int index;
  SuraContentArgs(this.suraname, this.index);
}
