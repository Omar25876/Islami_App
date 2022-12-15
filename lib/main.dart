import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/quran/sura_content.dart';
import 'package:islami/home/setting/languagebottomsheet.dart';
import 'package:islami/home/setting/themebottomsheet.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/settingprovider/providersetting.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home/hadeth/hadeth_details.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SettingProvider.prefs = await SharedPreferences.getInstance();
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingProvider()..getLocal()..gettheme(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  late SettingProvider provider;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English, no country code
        Locale('ar'), // Arabic, no country code
      ],
      locale: Locale(provider.currentlocal),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraContent.routeName: (_) => SuraContent(),
        HadethDetail.routeName: (_) => HadethDetail(),
        themebottomsheet.routeName: (_) => themebottomsheet(),
        languagebottomsheet.routeName: (_) => languagebottomsheet(),
      },
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      themeMode: provider.cuurrenttheme,
    );
  }
}
