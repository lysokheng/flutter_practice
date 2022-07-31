import 'package:flutter/material.dart';

class CollectionPic extends StatelessWidget {
  const CollectionPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myImageAndCaption = [
      ["assets/images/stray.jpeg", "Stray"],
      ["assets/images/cs_go.jpeg", "CS GO"],
      ["assets/images/god_of_war.jpeg", "God Of War"],
      ["assets/images/rss.jpeg", "Rainbow Six Siege"],
      ["assets/images/forza.jpeg", "Forza"],
      ["assets/images/crew.jpeg", "Crew"],
      ["assets/images/pubg.jpeg", "PUBG"],
      ["assets/images/gta.jpeg", "GTA"],
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Photo'),
                ),
              ),
              Tab(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Albums'),
                ),
              ),
            ]),
            title: const Text('Memories'),
          ),
          body: TabBarView(
            children: [
              //Photo Tab
              Icon(Icons.abc_rounded),

              //Albums Tab
              GridView.count(
                crossAxisCount: 2,
                children: [
                  ...myImageAndCaption.map(
                    (i) => Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Material(
                            child: Image.asset(
                              i.first,
                              fit: BoxFit.fitWidth,
                              height: 140,
                              width: 140,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(5),
                              child: Text(i.last),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
