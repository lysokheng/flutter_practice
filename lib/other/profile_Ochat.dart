import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class FacebookClone extends StatefulWidget {
  const FacebookClone({Key? key}) : super(key: key);

  @override
  State<FacebookClone> createState() => _FacebookCloneState();
}

class _FacebookCloneState extends State<FacebookClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //top
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //back
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.blue[800],
                        ),
                      ],
                    ),

                    const SizedBox(width: 70,),

                    //title
                    Row(
                      children: [
                        Text(
                            "Ochat",
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30,),

              //profile
              Center(
                child: Container(
                  child: const ProfilePicture(
                    name: 'Aditya Dharmawan Saputra',
                    radius: 80,
                    fontsize: 0,
                    img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
                  ),
                ),
              ),

              //information
              Container(
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                        "Name",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                        "Ricard Kun",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                    ),

                    SizedBox(height: 20,),

                    Text(
                      "ID",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "R_Kun",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),

                    SizedBox(height: 20,),

                    Text(
                      "Phone",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "+61852645172",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //bottom
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "update",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              //Barcode
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                margin: const EdgeInsets.only(left: 30, top: 20, right: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Barcode",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                        decoration: TextDecoration.underline
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
