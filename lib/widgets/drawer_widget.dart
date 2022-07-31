import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {

    return Drawer(

        child: Column(
          children: [
            //header
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ProfilePicture(
                          name: 'Aditya Dharmawan Saputra',
                          radius: 50,
                          fontsize: 0,
                          img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
                        ),

                        const SizedBox(width: 20,),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Jack", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            Text("Mobile App", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white70),),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //list item
            Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),

                ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Explore"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),

                ListTile(
                  leading: Icon(Icons.event),
                  title: Text("Event"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),

                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),

            const Spacer(),

            //log out
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
            ),
          ],
        ),
    );
  }
}
