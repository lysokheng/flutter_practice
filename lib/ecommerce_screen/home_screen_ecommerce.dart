import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class HomeScreenEcommerce extends StatelessWidget {
  const HomeScreenEcommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [

                //header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    ProfilePicture(
                      name: 'Aditya Dharmawan Saputra',
                      radius: 20,
                      fontsize: 0,
                      img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
                    ),
                  ],
                ),
                SizedBox(height: 15,),

                //welcome text
                Row(
                  children: [
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Choose', style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),),
                        SizedBox(height: 10,),
                        Text('Your Product', style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),
                    //search
                  ],
                ),

                SizedBox(height: 30,),

                //search field
                Row(
                  children: [
                    SizedBox(width: 15,),
                    Expanded(
                      child: ClipRect(
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            fillColor: Colors.black.withOpacity(0.05),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            hintText: 'Find your product',
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            prefixIcon: Container(
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
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.dashboard,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 15,),
                  ],
                ),

                SizedBox(height: 30,),

                //filter
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'All', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),
                          ),
                        ),
                      ),

                      SizedBox(width: 15,),

                      Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'Chair', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,

                          ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'Table', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,

                          ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'Recommend', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,

                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30,),

                //products
                Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        //left
                        Column(
                          children: [

                            //top left
                            Stack(
                              children: [

                                //background
                                Positioned(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.43,
                                    height: MediaQuery.of(context).size.height * 0.3,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                                //icon
                                Positioned(
                                  top: 15,
                                  right: 20,
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.favorite,
                                    )
                                  ),
                                ),

                                //icon
                                Positioned(
                                  bottom: 15,
                                  right: 20,
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 10,
                                            offset: Offset(0, 5), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: const Icon(
                                        Icons.add_circle,
                                      )
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 70,
                                  left: 20,
                                  child: Text(
                                    "Laounge",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 50,
                                  left: 20,
                                  child: Text(
                                    "Chair",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),

                                //price
                                const Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Text(
                                    "\$245.00",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),

                                //item
                                Positioned(
                                  top: 20,
                                  left: 0,
                                  child: Container(
                                    width: 160,
                                    height: 160,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://www.polspotten.com/dw/image/v2/BFPM_PRD/on/demandware.static/-/Sites-mastercatalog-polspotten/default/dw702af2a6/images/hires/Loungechair-puff-white_01_main.png?sw=800&sh=800&sm=fit'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24,),

                            // bottom left
                            Stack(
                              children: [

                                //background
                                Positioned(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.43,
                                    height: MediaQuery.of(context).size.height * 0.3,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                                //icon
                                Positioned(
                                  top: 15,
                                  right: 20,
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.favorite_border,
                                      )
                                  ),
                                ),

                                //icon
                                Positioned(
                                  bottom: 15,
                                  right: 20,
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 10,
                                            offset: Offset(0, 5), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: const Icon(
                                        Icons.add_circle,
                                      )
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 70,
                                  left: 20,
                                  child: Text(
                                    "Sofa",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 50,
                                  left: 20,
                                  child: Text(
                                    "Chair",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),

                                //price
                                const Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Text(
                                    "\$400.00",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),

                                //item
                                Positioned(
                                  top: 50,
                                  left: 20,
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://s5n7e4a2.rocketcdn.me/wp-content/uploads/2021/06/city-sofa-01.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(width: 24,),

                        //right
                        Column(
                          children: [

                            //top right
                            Stack(
                              children: [

                                //layout
                                Positioned(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.43,
                                    height: MediaQuery.of(context).size.height * 0.36,
                                  ),
                                ),

                                //background
                                Positioned(
                                  top: 30,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.43,
                                    height: MediaQuery.of(context).size.height * 0.3,
                                    decoration: BoxDecoration(
                                      color: Colors.yellowAccent.shade200.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                                //icon
                                Positioned(
                                  top: 45,
                                  right: 20,
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.favorite_border,
                                      )
                                  ),
                                ),

                                //icon
                                Positioned(
                                  bottom: 45,
                                  right: 20,
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 10,
                                            offset: Offset(0, 5), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: const Icon(
                                        Icons.add_circle,
                                      )
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 100,
                                  left: 20,
                                  child: Text(
                                    "Grounde",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 80,
                                  left: 20,
                                  child: Text(
                                    "Chair",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),

                                //price
                                const Positioned(
                                  bottom: 50,
                                  left: 20,
                                  child: Text(
                                    "\$300.00",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),

                                //item
                                Positioned(
                                  top: 90,
                                  left: 30,
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://5.imimg.com/data5/SELLER/Default/2022/1/DU/LW/SJ/129904415/sts-attachment-23460566-yellow-chair-pawan-500x500.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //bottom right
                            Stack(
                              children: [

                                //background
                                Positioned(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.43,
                                    height: MediaQuery.of(context).size.height * 0.3,
                                    decoration: BoxDecoration(
                                      color: Colors.pink.shade100.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                                //icon
                                Positioned(
                                  top: 15,
                                  right: 20,
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.favorite_border,
                                      )
                                  ),
                                ),

                                //icon
                                Positioned(
                                  bottom: 15,
                                  right: 20,
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 10,
                                            offset: Offset(0, 5), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: const Icon(
                                        Icons.add_circle,
                                      )
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 70,
                                  left: 20,
                                  child: Text(
                                    "Laounge",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                                //text product
                                const Positioned(
                                  bottom: 50,
                                  left: 20,
                                  child: Text(
                                    "Chair",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),

                                //price
                                const Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Text(
                                    "\$245.00",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),

                                //item
                                Positioned(
                                  top: 30,
                                  left: 0,
                                  child: Container(
                                    width: 160,
                                    height: 160,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.sofology.co.uk/q_70,w_300,dpr_3.0,fl_lossy,f_auto/productmedia/scoops/sku000145465.png'),
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
