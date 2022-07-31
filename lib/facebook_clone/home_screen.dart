import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: const [
          ListViewWidgets(),
          ListViewWidgets(),
          ListViewWidgets(),
          ListViewWidgets(),
        ],
      ),
    );
  }
}

class ListViewWidgets extends StatefulWidget {
  const ListViewWidgets({Key? key}) : super(key: key);

  @override
  State<ListViewWidgets> createState() => _ListViewWidgetsState();
}

class _ListViewWidgetsState extends State<ListViewWidgets> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        color: Colors.white,
        child: Wrap(
          children: [
            //header post
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProfilePicture(
                        name: 'Aditya Dharmawan Saputra',
                        radius: 25,
                        fontsize: 0,
                        img:
                            'https://avatars.githubusercontent.com/u/37553901?v=4',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Aditya Dharmawan Saputra",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: const [
                                Text("5h"),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.lock,
                                  size: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.more_horiz),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"),
                ),
              ],
            ),

            //image
            Image.network(
                'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/close-up-of-cat-wearing-sunglasses-while-sitting-royalty-free-image-1571755145.jpg',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,),

            //bottom post
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          //like emoji
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                            child: const Icon(
                              Icons.thumb_up,
                              size: 12,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          //emotion emoji
                          Container(
                            width: 20,
                            height: 20,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: const Icon(
                              Icons.emoji_emotions,
                              size: 20,
                              color: Colors.amber,
                            ),
                          ),
                          //heart emoji
                          Container(
                            width: 20,
                            height: 20,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: const Icon(
                              Icons.favorite,
                              size: 20,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            "Eric Liang and 120 others",
                          ),
                          const Spacer(),
                          const Text("120 Comments"),
                        ],
                      ),
                      const Divider(),
                    ],
                  ),
                ),

                //like comments share
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      //like
                      TextButton(
                        onPressed: () {
                          setState(() => isLiked = !isLiked);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.thumb_up,
                              color: isLiked ? Colors.blue : Colors.grey,
                            ),
                            const SizedBox(width: 5),
                            Text("Like",
                                style: TextStyle(
                                    color:
                                        isLiked ? Colors.blue : Colors.grey)),
                          ],
                        ),
                      ),

                      //comments
                      TextButton(
                        onPressed: () {
                          Scaffold.of(context).showBottomSheet<void>(
                                (BuildContext context) {
                              return Container(
                                color: Colors.transparent,
                                height: 500,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(30),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: [
                                            const CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                "https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/profile-of-a-cat-nina-pearman.jpg"
                                              ),
                                            ),
                                            const SizedBox(width: 10,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(0.2),
                                                    borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(15.0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: const [
                                                        Text("Zig Zag", style: TextStyle(fontWeight: FontWeight.bold),),
                                                        Text("Lorem Ipsum is simply dummy text"),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 5,),
                                                Row(
                                                  children: const [
                                                    Text("1 hours ago", style: TextStyle(color: Colors.grey),),
                                                    SizedBox(width: 10,),
                                                    Text("Like", style: TextStyle(color: Colors.grey),),
                                                    SizedBox(width: 10,),
                                                    Text("Reply", style: TextStyle(color: Colors.grey),),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.comment, color: Colors.grey),
                            SizedBox(width: 5),
                            Text("Comments", style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      ),

                      //share
                      Row(
                        children: const [
                          Icon(Icons.share, color: Colors.grey),
                          SizedBox(width: 5),
                          Text("Share", style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
