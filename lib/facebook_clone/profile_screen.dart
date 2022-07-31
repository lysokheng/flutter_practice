import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Column(
          children: [
            //header
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                //background
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://img.freepik.com/premium-vector/seamless-map-global-network-system_8130-66.jpg?w=2000"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //change background
                Positioned(
                  right: 0,
                  child: Column(
                    children: [
                      //camera
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey.shade300),
                          child: const Icon(
                            Icons.camera_enhance,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //profile
                Positioned(
                  top: 100,
                  child: Container(
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg'),
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 6,
                        )),
                  ),
                ),

                //change profile
                Positioned(
                  top: 240,
                  left: 250,
                  child: Container(
                    //camera
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade300),
                    //camera
                    child: const Icon(
                      Icons.camera_enhance,
                    ),
                  ),
                ),
              ],
            ),

            //name
            Container(
              alignment: Alignment.bottomCenter,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Mark Zuckerberg AI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),

            //Description
            const Text(
              'Bringing the world closer together',
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            //edit info
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, right: 15, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //add to story
                      Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Add to story",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      //edit profile
                      Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.edit,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Edit profile",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      //more
                      Container(
                        width: 50,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.more_horiz,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //grey line
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(
                thickness: 2,
              ),
            ),

            //ask user
            Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                          height: 140,
                          width: MediaQuery.of(context).size.width * 0.92,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.03),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //image
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  'https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg'),
                                            ),
                                          ),
                                        ),

                                        const SizedBox(
                                          width: 15,
                                        ),

                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "What's new, Mark?",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                                "Let's update some profile info that "),
                                            Text("may have changed."),
                                          ],
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 15,),

                                    Row(
                                      children: [
                                        //not now button
                                        Container(
                                          width: 150,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.07),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                "Not Now",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        const SizedBox(width: 20,),

                                        //update profile button
                                        Container(
                                          width: 150,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.blueAccent,
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                "Update Profile",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),

                    //edit icon
                    Positioned(
                      left: 50,
                      top: 50,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.lightBlueAccent,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                )
                              ),
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),

            //info personal
            Row(
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.work, color: Colors.grey),
                            Text("   Founder and CEO at "),
                            Text("Meta", style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),

                        const SizedBox(height: 10,),

                        Row(
                          children: const [
                            Icon(Icons.work, color: Colors.grey),
                            Text("   Work at "),
                            Text("Chan Zuckerberg Initiative", style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                        const SizedBox(height: 10,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.school, color: Colors.grey,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("   Studied Computer Science and Psychology at "),
                                Text("   Harvard University", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                              ],
                            )
                          ],
                        ),

                        const SizedBox(height: 10,),

                        Row(
                          children: const [
                            Icon(Icons.house, color: Colors.grey),
                            Text("   Live in "),
                            Text("Palo Alto, California", style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                        const SizedBox(height: 10,),

                        Row(
                          children: const [
                            Icon(Icons.map_outlined, color: Colors.grey),
                            Text(" Founder and CEO at "),
                            Text("Meta", style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                        const SizedBox(height: 10,),

                        Row(
                          children: const [
                            Icon(Icons.favorite, color: Colors.grey),
                            Text("   Married to "),
                            Text("Priscilla Chan", style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                        const SizedBox(height: 10,),

                        Row(
                          children: const [
                            Icon(Icons.signal_cellular_alt, color: Colors.grey),
                            Text("   Followed by "),
                            Text("119.279.324 people", style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
