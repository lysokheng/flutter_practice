import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/facebook_clone/notification_screen.dart';
import 'package:learning_flutter/facebook_clone/profile_screen.dart';
import 'package:learning_flutter/facebook_clone/search_screen.dart';
import 'package:learning_flutter/facebook_clone/setting_screen.dart';
import 'package:learning_flutter/widgets/drawer_widget.dart';
import 'home_screen.dart';

class MainPageFacebook extends StatefulWidget {
  const MainPageFacebook({Key? key}) : super(key: key);

  @override
  State<MainPageFacebook> createState() => _MainPageFacebookState();
}

class _MainPageFacebookState extends State<MainPageFacebook> {
  int selectedIndex = 0;

  List<Widget> lstWidgets = [
    HomeScreen(),
    const SearchScreen(),
    const NotificationScreen(),
    const SettingScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text("Practice"),
      ),

      body: lstWidgets[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        onTap: (index) {
          setState(() => selectedIndex = index);
          if (kDebugMode) {
            print('index : $index');
          }
        },
        type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notification'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

          ]),
    );
  }
}