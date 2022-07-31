import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GetStartScreenEcommerce extends StatefulWidget {
  const GetStartScreenEcommerce({Key? key}) : super(key: key);

  @override
  State<GetStartScreenEcommerce> createState() => _GetStartScreenEcommerceState();
}

class _GetStartScreenEcommerceState extends State<GetStartScreenEcommerce> {
  final PageController controller = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: PageView(
              onPageChanged: (index) {
                setState(() => currentIndex = index);
                if (kDebugMode) {
                  print('index $index');
                }
              },
              controller: controller,
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.lime.shade100,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const Center(
                          child: Text(
                            "Furniture",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.anindo.com/wp-content/uploads/2022/04/13a0e85f-04e0-4e94-915e-b5baccc02712-a.png')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent.shade100,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const Center(
                          child: Text(
                            "Furniture",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://s5n7e4a2.rocketcdn.me/wp-content/uploads/2021/06/city-sofa-main.png')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent.shade100,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const Center(
                          child: Text(
                            "Furniture",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://webimages.neptune.com/images/d1422102-3ac5-4fd0-88f097c9ef344313?anchor=center&mode=crop&quality=80&width=1600')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),

          //indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 10,
                      height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == index ? Colors.black : Colors.black.withOpacity(0.2),
                    ),
                  ),
                );
              }
              ),
          ),

          const SizedBox(
            height: 30,
          ),

          Column(
            children: [
              const Center(
                child: Text(
                  "Find the Best Furniture",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "Style For You",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  "There are many new outfits that",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "make you cool",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(left: 60, right: 60, top: 30, bottom: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    primary: Colors.white,
                    backgroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {  },
                  child: const Text(
                    'Get Started',

                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
