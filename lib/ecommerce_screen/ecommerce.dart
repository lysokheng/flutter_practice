import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              children: [
                //header
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.dashboard,
                        color: Colors.redAccent.shade100,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                    ),
                    const Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.12,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const ProfilePicture(name: "H", radius: 20, fontsize: 14),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                //search
                Row(
                  children: [
                    Expanded(
                      child: ClipRect(
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            hintText: 'Search...',
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                            suffixIcon: Container(
                              padding: const EdgeInsets.all(12),
                              width: 12,
                              child: const Icon(
                                Icons.search,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    //filter
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.redAccent.shade100,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.filter_alt_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                //recommend
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.purple.shade400,
                            Colors.lightBlueAccent.shade100
                          ]),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 15,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.16,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Get the special discount",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 8,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "50 %",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "OFF",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        right: 30,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1610392443-TD1MGYS_SHOE_ANGLE_GLOBAL_MENS_TREE_DASHERS_GEYSER_26f5ca99-9d93-4a66-b4c2-38c140f47007.png"),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                //indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                //slide
                SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.dashboard,
                              color: Colors.redAccent.shade100,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("All"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 130,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(image: NetworkImage('https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1610392443-TD1MGYS_SHOE_ANGLE_GLOBAL_MENS_TREE_DASHERS_GEYSER_26f5ca99-9d93-4a66-b4c2-38c140f47007.png'),
                            width: 40,),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Footwear",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 110,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(image: NetworkImage('https://cdn.shopify.com/s/files/1/0057/8938/4802/products/485ea9aa-b170-4efc-ac40-ab8b0854083c_600x.png?v=1625044988'),
                              width: 40,),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Watch",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(image: NetworkImage('https://cdn.shopify.com/s/files/1/0531/5962/4900/products/PauseoiledOak01_600x.png?v=1615544152'),
                              width: 40,),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Chair",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 120,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(image: NetworkImage('https://ptc-web-cdn.sgp1.digitaloceanspaces.com/wp-content/uploads/2020/01/11221119/li-355-1519611493-2254.png'),
                              width: 40,),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Laptop",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                //popular text
                Row(
                  children: const [
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                //popular products
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                //background
                                Positioned(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.43,
                                    height: MediaQuery.of(context).size.height * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.lime.shade100,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                                //text item
                                Positioned(
                                  top: 15,
                                  left: 20,
                                  child: Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "New",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 40,
                                  left: 20,
                                  child: Text(
                                    "Nike Shoes",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                                //price
                                const Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Text(
                                    "\$12.00",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),

                                //shoe
                                Positioned(
                                  bottom: 20,
                                  left: 30,
                                  child: Container(
                                    width: 100,
                                    height: 160,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1618434456-TD1MTHU_SHOE_ANGLE_GLOBAL_MENS_TREE_DASHERS_THUNDER_d2d37940-b8b8-49b9-b579-befc6f7dd60a.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24,),
                            Stack(
                              children: [
                                //background
                                Positioned(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.43,
                                    height: MediaQuery.of(context).size.height * 0.25,
                                    decoration: BoxDecoration(
                                      color: Colors.cyan.shade100,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                                //text item
                                Positioned(
                                  top: 15,
                                  left: 20,
                                  child: Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "New",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 40,
                                  left: 20,
                                  child: Text(
                                    "Watch",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                                //price
                                const Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Text(
                                    "\$20.00",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),

                                //item
                                Positioned(
                                  bottom: 40,
                                  left: 30,
                                  child: Container(
                                    width: 100,
                                    height: 160,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://consumer.huawei.com/content/dam/huawei-cbg-site/common/mkt/pdp/wearables/watch-d/img/pc/huawei-watch-d-design.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 24,),
                        Column(
                          children: [
                            Stack(
                              children: [
                                //background
                                Positioned(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.43,
                                    height: MediaQuery.of(context).size.height * 0.25,
                                    decoration: BoxDecoration(
                                      color: Colors.pinkAccent.shade100,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 40,
                                  left: 20,
                                  child: Text(
                                    "Chair",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                                //price
                                const Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Text(
                                    "\$10.00",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),

                                //item
                                Positioned(
                                  top: 20,
                                  right: 15,
                                  child: Container(
                                    width: 140,
                                    height: 140,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://kingseasybuy.com/wp-content/uploads/2021/10/Cooler-Master-Caliber-R1-Gaming-Chair-Pink-.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24,),
                            Stack(
                              children: [
                                //background
                                Positioned(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.43,
                                    height: MediaQuery.of(context).size.height * 0.25,
                                    decoration: BoxDecoration(
                                      color: Colors.purpleAccent.shade100,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 40,
                                  left: 20,
                                  child: Text(
                                    "Laptops",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                                //price
                                const Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Text(
                                    "\$800.00",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),

                                //item
                                Positioned(
                                  top: 30,
                                  right: 30,
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c07989545.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
