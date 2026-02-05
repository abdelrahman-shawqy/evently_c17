import 'package:evently_c17/screens/home_screen/tabs/fav_page.dart';
import 'package:evently_c17/screens/home_screen/tabs/homepage.dart';
import 'package:evently_c17/screens/home_screen/tabs/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';
import '../addEvents/addEventSCREEN.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen ";

   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>HomeProvider(),
      builder: (context,child){
        var homeprovider=Provider.of<HomeProvider>(context);
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          appBar: AppBar(
            centerTitle: false,
            actions: [
              ImageIcon(
                AssetImage("assets/images/sun.png"),
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 8),
              Container(
                height: 32,
                width: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 8,
                    left: 8,
                    top: 5.5,
                    bottom: 5.5,
                  ),
                  child: Text('EN', style: Theme.of(context).textTheme.bodyMedium),
                ),
                alignment: Alignment.center,
              ),
              SizedBox(width: 16),
            ],
            title: ListTile(
              title: Text(
                "Welcome Back ✨",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              subtitle: Text(
                "John Safwan",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AddEventScreen.routeName);
            },
            child: Icon(Icons.add, color: Colors.white),

          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value){
              homeprovider.changeSelectedItem(value);
            },
            currentIndex: homeprovider.selectedItem,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/home-2.png")),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/heart.png")),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/user.png")),
                label: "Profile",
              ),
            ],
          ),
          body: taps[homeprovider.selectedItem],
        );
      }

    );
  }
  List<Widget>taps=[HomePage(),ProfilePage(),FavoritePage(),];

}
