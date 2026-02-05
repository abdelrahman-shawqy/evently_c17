import 'package:easy_localization/easy_localization.dart';
import 'package:evently_c17/provider/theme_provider.dart';
import 'package:evently_c17/screens/addEvents/addEventSCREEN.dart';
import 'package:evently_c17/screens/home_screen/home_screen.dart';
import 'package:evently_c17/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/my_theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp( EasyLocalization(
      supportedLocales: [Locale('ar', 'EG'), Locale('en', 'US')],
      path: 'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('ar', 'EG'),
      child: ChangeNotifierProvider(
          create: (context)=>ThemeProvider(),

          child: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    var myProvider =Provider.of<ThemeProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: myProvider.themeMode,
      initialRoute: HomeScreen.routeName,
      routes: {
        AddEventScreen.routeName:(context)=>AddEventScreen(),
        OnboardingScreen.routeName:(context)=>OnboardingScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
      },
    );
  }
}
