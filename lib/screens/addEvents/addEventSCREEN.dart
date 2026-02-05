import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../provider/addEvent_provider.dart';




class AddEventScreen extends StatelessWidget {

  static const String routeName = "AddEventScreen";

  AddEventScreen({super.key});

  List<String> categories = ["Sport", "Birthday", "BookClub"];
  List<String> chips = ["SportChip", "birthdayCakeChip", "bookChip"];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddEventProvider(),
      builder: (context, child) {
        var addEventProvider = Provider.of<AddEventProvider>(context);
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          appBar: AppBar(
            title: Text(
              'Add event',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/${categories[addEventProvider.addEventIndix]}.png",
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 40,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          addEventProvider.changeAddEventIndix(index);
                          addEventProvider.chchangeAddEventIndixChips(index);
                        },
                        child: Chip(
                          avatar: ImageIcon(
                            color: index == addEventProvider.addEventIndexChips
                                ? Colors.white
                                : Theme.of(context).colorScheme.primary,
                            AssetImage("assets/images/${chips[index]}.png"),
                          ),
                          side: BorderSide(width: 0, color: Colors.white),
                          backgroundColor: index == addEventProvider.addEventIndix
                              ? Theme.of(context).colorScheme.primary
                              : Colors.white,
                          label: Text(categories[index]),
                          labelStyle: index == addEventProvider.addEventIndix
                              ? Theme.of(context).textTheme.displayMedium
                              : Theme.of(context).textTheme.displaySmall,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) => SizedBox(width: 8),
                      itemCount: categories.length,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("Title", style: Theme.of(context).textTheme.displayLarge),
                  SizedBox(height: 8),
                  SizedBox(
                    height: 48,width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                        fillColor:Color(0xffffffff),
                        label: Text(
                          'Event Title',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7B7B7B),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
              
                      ),
              
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text("Description",style:Theme.of(context).textTheme.displayLarge,),
                  TextField(
                    textAlign: TextAlign.start,
                    maxLines: 5,
                    decoration: InputDecoration(
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      fillColor:Color(0xffffffff),
                      hint: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Event Description....',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7B7B7B),
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
              
                    ),
              
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    height: 24,
                    child: Row(
                      children: [
                        Image.asset("assets/images/date.png"),
                        Spacer(
                          flex: 1,
                        ),
                        Text('Choose date',
                          style:
                          GoogleFonts.poppins(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.primary,
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    height: 24,
                    child: Row(
                      children: [
                        Image.asset("assets/images/time.png"),
                        Spacer(
                          flex: 1,
                        ),
                        Text('Choose date',
                          style:
                          GoogleFonts.poppins(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.primary,
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 48,
                    width: double.infinity,

                    child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                       shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16) )
                         ),
                          child:Text('Add Event',style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffffffff),
                          ),) ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
