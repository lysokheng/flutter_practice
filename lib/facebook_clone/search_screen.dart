import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //search
          Row(
            children: [
              Container(
                color: Colors.blueAccent,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Jessica",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.cancel,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 14,
                    )
                  ],
                ),
              ),
            ],
          ),

          //info
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://jimbomaniak.github.io/homepage/assets/img/avatar.jpg"),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jessica Hudack",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("San Francisco, California"),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://jimbomaniak.github.io/homepage/assets/img/avatar.jpg"),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jessica Hudack",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("San Francisco, California"),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://jimbomaniak.github.io/homepage/assets/img/avatar.jpg"),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jessica Hudack",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("San Francisco, California"),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://jimbomaniak.github.io/homepage/assets/img/avatar.jpg"),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jessica Hudack",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("San Francisco, California"),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://jimbomaniak.github.io/homepage/assets/img/avatar.jpg"),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jessica Hudack",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("San Francisco, California"),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://jimbomaniak.github.io/homepage/assets/img/avatar.jpg"),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jessica Hudack",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("San Francisco, California"),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
