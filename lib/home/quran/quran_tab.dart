import 'package:flutter/material.dart';
import 'package:islami/home/quran/sura_name.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/settingprovider/providersetting.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatelessWidget {
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Column(
      children: [
        Image.asset('assets/images/quran_screen_logo.png'),
        Divider(
            thickness: 3,
            color: provider.cuurrenttheme == ThemeMode.light
                ? MyThemeData.secondaryColor
                : MyThemeData.secondaryColorDark),
        Center(
            child: Text(
          AppLocalizations.of(context)!.suraName,
          style: Theme.of(context).textTheme.headline1,
        )),
        Divider(
            thickness: 3,
            color: provider.cuurrenttheme == ThemeMode.light
                ? MyThemeData.secondaryColor
                : MyThemeData.secondaryColorDark),
        Expanded(
          child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                  thickness: 3,
                  color: provider.cuurrenttheme == ThemeMode.light
                      ? MyThemeData.secondaryColor
                      : MyThemeData.secondaryColorDark),
              itemCount: suraName.length,
              itemBuilder: (_, index) {
                return SuraName(
                  sura: '${suraName[index]}',
                  index: index,
                );
              }),
        ),
      ],
    );
  }
}
