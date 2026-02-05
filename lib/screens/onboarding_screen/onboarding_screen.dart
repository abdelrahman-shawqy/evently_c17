import 'package:easy_localization/easy_localization.dart';
import 'package:evently_c17/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = "OnboardingScreen";
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<ThemeProvider>(context);
    final bool isEnglish = context.locale == Locale('en', 'US');
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,انا عملتلها كومنت عشان انا حجتها في ال theme
        title: Image.asset("assets/images/logo.png"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 24,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/criatev.png", width: double.infinity),
            Text(
              "titleOnboardingScreen".tr(),
              style:Theme.of(context).textTheme.titleLarge
            ),
            Text(
              "subTitleOnboardingScreen".tr(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Column(
              spacing: 16,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "language".tr(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Container(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              context.setLocale(Locale('en', 'US'));
                            },
                            child: LanguageIconWidget("en".tr(), !isEnglish,context),
                          ),
                          SizedBox(width: 8),
                          InkWell(
                            onTap: () {
                              context.setLocale(Locale('ar', 'EG'));
                            },
                            child: LanguageIconWidget("ar".tr(), isEnglish,context),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "theme".tr(),
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          InkWell(
                              onTap:(){
                                provider.changeTheme(ThemeMode.light);
                              },
                              child: ThemeIconWidget("sun", provider.themeMode==ThemeMode.light,context)),
                          SizedBox(width: 8),
                          InkWell(
                              onTap:(){
                                provider.changeTheme(ThemeMode.dark);
                              },
                              child: ThemeIconWidget("moon", provider.themeMode==ThemeMode.dark,context)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      "buttStart".tr(),
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget LanguageIconWidget(String language, bool isSelected,BuildContext context) {
    return Container(
      height: 32,
      width: 83,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? Theme.of(context).colorScheme.surface: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2),
      ),
      child: Text(
        '$language',
        style: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: !isSelected ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }

  Widget ThemeIconWidget(String iconName, bool isSelectedTHem,BuildContext context) {
    return Container(
      height: 32,
      width: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelectedTHem ? Theme.of(context).colorScheme.primary: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2),
      ),
      child: ImageIcon(
        AssetImage("assets/images/$iconName.png"),
        color: isSelectedTHem ? Theme.of(context).colorScheme.surface : Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
