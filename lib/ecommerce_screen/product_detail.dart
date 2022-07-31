import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, top: 15),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.favorite_border,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Stack(
              alignment: Alignment.topCenter,
              children: [

                Positioned(child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                )),

                Positioned(
                  bottom: 60,
                  child: Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: NetworkImage(
                          'https://www.polspotten.com/dw/image/v2/BFPM_PRD/on/demandware.static/-/Sites-mastercatalog-polspotten/default/dw702af2a6/images/hires/Loungechair-puff-white_01_main.png?sw=800&sh=800&sm=fit'
                      ))
                  ),
                ),),

                //icon
                Positioned(
                  bottom: 15,
                  right: 20,
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                      )
                  ),
                ),

                //icon
                Positioned(
                  bottom: 15,
                  right: 70,
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black.withOpacity(0.1), width: 3),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.black,
                      )
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Laounge', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                ),),
                                SizedBox(height: 5,),
                                Text('Chair', style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Price', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),

                                SizedBox(height: 5,),
                                Text('\$245.00', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                ),),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          children: const [
                            Text('Colour', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),),
                          ],
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.lime.shade800,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                const SizedBox(width: 15,),
                                Container(
                                  width: 50,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black.withOpacity(0.1), width: 3, style: BorderStyle.solid),
                                  ),
                                ),
                                const SizedBox(width: 15,),

                                Container(
                                  width: 50,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.brown,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),

                                const SizedBox(width: 40,),

                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey, width: 3, style: BorderStyle.solid),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '-', style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey
                                    ),
                                    ),
                                  )
                                ),

                                const SizedBox(width: 15,),

                                const Text('1', style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),),

                                const SizedBox(width: 15,),

                                Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      border: Border.all(color: Colors.grey, width: 3, style: BorderStyle.solid),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '+', style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white
                                      ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Decription', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),),
                            SizedBox(height: 15,),
                            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                                'Lorem Ipsum has been the industry\'s standard dummy text '
                                'ever since the 1500s,', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.grey,
                            ),),
                          ],
                        ),
                        const SizedBox(height: 30,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.shopping_cart
                              ),
                            ),
                            Container(
                              width: 240,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  'Buy Now', style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
