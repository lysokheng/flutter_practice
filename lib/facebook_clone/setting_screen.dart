import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(backgroundImage: NetworkImage(
                      "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/01be2f27718991.56369a1c5efb2.png"
                  ),),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("David Beckham"),
                      Text("See your profile", style: TextStyle(fontSize: 12, color: Colors.grey),)
                    ],
                  ),
                ],
              ),
              const Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(backgroundImage: NetworkImage(
                      "https://e7.pngegg.com/pngimages/437/256/png-clipart-computer-icons-brand-page-facebook-social-media-facebook-angle-rectangle.png"
                  ),),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("David Beckham"),
                    ],
                  ),
                ],
              ),
              const Divider(),
              const Text("Your Shortcut"),
              Row(
                children: [
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: const [
                            Icon(Icons.facebook),
                            Text("Pages"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: const [
                            Icon(Icons.people),
                            Text("Friends"),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: const [
                            Icon(Icons.group),
                            Text("Groups"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: const [
                            Icon(Icons.shop),
                            Text("Marketplace"),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: const [
                            Icon(Icons.videocam),
                            Text("Video"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: const [
                            Icon(Icons.save),
                            Text("Save"),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Center(
                child: TextButton(onPressed: (){}, child: const Text(
                  "See More"
                )),
              ),
              Row(
                children: const [
                  Icon(Icons.settings),
                  SizedBox(width: 10,),
                  Text("Settings & Privacy"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
