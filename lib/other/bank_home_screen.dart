import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class BankHomeScreen extends StatefulWidget {
  const BankHomeScreen({Key? key}) : super(key: key);

  @override
  State<BankHomeScreen> createState() => _BankHomeScreenState();
}

class _BankHomeScreenState extends State<BankHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //header
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  //navigation bar
                  Row(
                    children: const [
                      Icon(
                        Icons.menu,
                        size: 30,
                      ),
                    ],
                  ),

                  //notification and profile image
                  Row(
                    children: const [
                      Icon(
                        Icons.doorbell_outlined,
                        size: 40,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ProfilePicture(
                        name: 'Aditya Dharmawan Saputra',
                        radius: 31,
                        fontsize: 0,
                        img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Welcome Text
            Container(
              padding: const EdgeInsets.only(left: 30, top: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Creative Mints",
                    style: TextStyle(
                      fontSize: 26,

                    ),
                  ),
                ],
              ),
            ),

            //Search
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(15),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),

            //product row 1
            Container(
              padding: const EdgeInsets.only(left: 38, top: 38, right: 38),
              child:

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //container 1
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.green[400],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.attach_money_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Transactions",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "7 items",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //container 2
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.comment_bank_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Budget",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "4 items",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),

            //product row 2
            Container(
              padding: const EdgeInsets.only(left: 38, top: 13, right: 38),
              child:

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //container 3
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.yellow[800],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Recommendations",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "6 items",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //container 4
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.credit_card,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Credit Cards",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "3 items",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),

            //categories
            Container(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Choose a categories",
                    style: TextStyle(
                      fontSize: 24,

                    ),
                  ),

                  //2 categories
                  Container(
                    padding: const EdgeInsets.only(top: 13, right: 30),
                    child:

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          //category 1
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12, width: 3),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.comment_bank,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Branch"
                                          "\nServiecs",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          //category 2
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12, width: 3),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.credit_card,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Make a"
                                          "\nPayment",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ]
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}