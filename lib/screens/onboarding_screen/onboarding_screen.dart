import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = "OnboardingScreen";

  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/images/logo.png"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 24,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/criatev.png", width: double.infinity),
            Text("Personalize Your Experience",style: GoogleFonts.inter(
              fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff1c1c1c)
            ),),
            Text("Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.",
            style:GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff686868),) ,
            ),
            Column(
              spacing: 16,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Language",style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xff0E3A99),
                  ),),
                  Container(
                    child: Row(children: [
                      Text('English',style: GoogleFonts.inter(fontSize: 14,
                          fontWeight: FontWeight.w600,color: Colors.blue),),
                      Text('Arabic',style: GoogleFonts.inter(fontSize: 14,
                          fontWeight: FontWeight.w600,color: Colors.blue),),

                    ],)),
                ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Theme",style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xff0E3A99),
                    ),),
                    Container(
                        child: Row(children: [
                          Image.asset("assets/images/sun.png"),
                          Image.asset("assets/images/moon.png"),
                        ],)),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0E3A99),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    child: Text("Let’s start", style:GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)) ,),
                  ),
                )


              ],
            ),
          ],
        ),
      ),
    );
  }
}
