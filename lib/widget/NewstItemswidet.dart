import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled17/Data/test-prodect/test%20prodect1.dart';
import 'package:untitled17/homepage/Aeat_App/info_screen.dart';
import 'package:untitled17/widget/Itempage10.dart';
import 'package:untitled17/widget/Itempage11.dart';
import 'package:untitled17/widget/Itempage12.dart';
import 'package:untitled17/widget/Itempage13.dart';
import 'package:untitled17/widget/Itempage14.dart';
import 'package:untitled17/widget/Itempage3.dart';
import 'package:untitled17/widget/Itempage4.dart';
import 'package:untitled17/widget/Itempage5.dart';
import 'package:untitled17/widget/Itempage6.dart';
import 'package:untitled17/widget/Itempage7.dart';
import 'package:untitled17/widget/Itempage8.dart';
import 'package:untitled17/widget/Itempage9.dart';
import 'package:untitled17/widget/cart_Newwsted/cart11_order.dart';
import 'package:untitled17/widget/cart_Newwsted/cart12_order.dart';
import 'package:untitled17/widget/cart_Newwsted/cart13_order.dart';
import 'package:untitled17/widget/cart_Newwsted/cart14_order.dart';
import 'package:untitled17/widget/ite1.dart';
import 'cart_Newwsted/cart10_order.dart';
import 'cart_Newwsted/cart1_order.dart';
import 'cart_Newwsted/cart2_order.dart';
import 'cart_Newwsted/cart3_order.dart';
import 'cart_Newwsted/cart4_order.dart';
import 'cart_Newwsted/cart5_order.dart';
import 'cart_Newwsted/cart6_order.dart';
import 'cart_Newwsted/cart8_order.dart';
import 'cart_Newwsted/cart9_order.dart';
import 'package:flutter/cupertino.dart';

import 'Itempage2.dart';


class NewstItemswidet extends StatefulWidget {
  const NewstItemswidet({Key? key}) : super(key: key);

  @override
  State<NewstItemswidet> createState() => _NewstItemswidetState();
}

class _NewstItemswidetState extends State<NewstItemswidet> {
  final _firestore= FirebaseFirestore.instance;
  double reat =0.0;
 bool isPressed77= true;
  bool isHighlighted77 = true;
  bool isPressed22 = true;
  bool isHighlighted22=true;

  bool isPressed3 = true;
  bool isHighlighted3 = true;
  bool isPressed11 = true;
  bool isHighlighted11 = true;
  bool isPressed33 = true;
  bool isHighlighted33 = true;
  bool isPressed4 = true;
  bool isHighlighted4 = true;
  bool isPressed66 = true;
  bool isHighlighted66 = true;
  bool isPressed155 = true;
  bool isHighlighted55 = true;
  bool isPressed677 = true;
  bool isHighlighted677 = true;
  bool isPressed44 = true;
  bool isHighlighted44 = true;
  bool isPressed55 = true;
  bool isHighlighted5 = true;
  bool isPressed5 = true;
  bool isHighlighted = true;



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric
          (
            vertical: 10,
            horizontal: 20
        ),
        child: Column(
          children: [
            //  for(int i = 0; i < 10; i++)
            Padding(padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(width: 380,height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]
                ),
                child:
                Row(
                  children: [InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Itempage()),
                      );
                    },
                    /////image1///
                    child: Container(alignment: Alignment.center,
                      child:
                      Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F188-Combo.jpg?alt=media&token=05595a49-969b-47fb-881d-c9c5ea48d15b",
                        height: 120,
                        width: 150,

                      ),
                    ),
                  ),
                    SizedBox(
                      width: 150,
                      child:
                      Column
                        (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(" orange+grean",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                          const Text(" orange+grean",style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                          ),
                          ),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
                            ),
                            onRatingUpdate: (index){
                              reat = index;
                              _firestore.collection('star').add({
                                "reat" : reat,
                              });
                            },
                          ),
                          const Text("\$100",style: TextStyle(fontSize: 20,color: Colors.red,
                              fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onHighlightChanged: (value) {
                              setState(() {
                                isHighlighted11 = !isHighlighted11;
                              });
                            },
                            onTap: () {
                              setState(() {
                                isPressed11 = !isPressed11;
                              });
                            },
                            child: AnimatedContainer(
                              // margin: EdgeInsets.all(isHighlighted ? 0 : 2),
                              // height: isHighlighted ? 50 : 45,
                              // width: isHighlighted ? 50 : 45,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // BoxShadow(
                                  //   color: Colors.black.withOpacity(0.2),
                                  //   blurRadius: 20,
                                  //   offset: Offset(5, 10),
                                  // ),
                                ],
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: isPressed11
                                  ? Icon(
                                Icons.favorite_border,
                                color: Colors.red.withOpacity(0.6),
                              )
                                  : Icon(
                                Icons.favorite,
                                color: Colors.pink.withOpacity(1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),







            Padding(padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(width: 380,height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]
                ),
                child:
                Row(
                  children: [InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Itempage1()),
                      );
                    },

                    ////////image2//////

                    child: Container(alignment: Alignment.center,
                      child:
                      Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D8%AC%D8%B1%D8%A7%D9%86%D8%AF%20%D8%B4%D9%8A%D8%B1%20%D8%A8%D9%88%D9%83%D8%B3.jpg?alt=media&token=fa6df77d-0163-404c-a77d-8f0e0eee0e5f",
                        height: 120,
                        width: 150,

                      ),
                    ),
                  ),
                    SizedBox(
                      width: 150,
                      child:
                      Column
                        (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Hot Talpat",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                          const Text(" Talpat",style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                          ),
                          ),
                          RatingBar.builder(initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
                            ),
                            onRatingUpdate: (index){},
                          ),
                          const Text("\$100",style: TextStyle(fontSize: 20,color: Colors.red,
                              fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onHighlightChanged: (value) {
                              setState(() {
                                isHighlighted22 = !isHighlighted22;
                              });
                            },
                            onTap: () {
                              setState(() {
                                isPressed22 = !isPressed22;
                              });
                            },
                            child: AnimatedContainer(
                              // margin: EdgeInsets.all(isHighlighted ? 0 : 2),
                              // height: isHighlighted ? 50 : 45,
                              // width: isHighlighted ? 50 : 45,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // BoxShadow(
                                  //   color: Colors.black.withOpacity(0.2),
                                  //   blurRadius: 20,
                                  //   offset: Offset(5, 10),
                                  // ),
                                ],
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: isPressed22
                                  ? Icon(
                                Icons.favorite_border,
                                color: Colors.red.withOpacity(0.6),
                              )
                                  : Icon(
                                Icons.favorite,
                                color: Colors.pink.withOpacity(1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(width: 380,height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]
                ),
                child:
                Row(
                  children: [InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Itempage2()),
                      );
                    },
                    //////image3////////

                    child: Container(alignment: Alignment.center,
                      child:
                      Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F46-Combo.jpg?alt=media&token=3e6b2495-a92b-41a4-a026-4350f710f46b",
                        height: 120,
                        width: 150,

                      ),
                    ),
                  ),
                    SizedBox(
                      width: 150,
                      child:
                      Column
                        (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Hot Talpat",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                          const Text(" Talpat",style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                          ),
                          ),
                          RatingBar.builder(initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
                            ),
                            onRatingUpdate: (index){},
                          ),
                          const Text("\$20",style: TextStyle(fontSize: 20,color: Colors.red,
                              fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onHighlightChanged: (value) {
                              setState(() {
                                isHighlighted33 = !isHighlighted33;
                              });
                            },
                            onTap: () {
                              setState(() {
                                isPressed33 = !isPressed33;
                              });
                            },
                            child: AnimatedContainer(
                              margin: EdgeInsets.all(isHighlighted33 ? 0 : 2.5),
                              // height: isHighlighted ? 50 : 45,
                              // width: isHighlighted ? 50 : 45,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // BoxShadow(
                                  //   color: Colors.black.withOpacity(0.2),
                                  //   blurRadius: 20,
                                  //   offset: Offset(5, 10),
                                  // ),
                                ],
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: isPressed33
                                  ? Icon(
                                Icons.favorite_border,
                                color: Colors.red.withOpacity(0.6),
                              )
                                  : Icon(
                                Icons.favorite,
                                color: Colors.pink.withOpacity(1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(width: 380,height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]
                ),
                child:
                Row(
                  children: [InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Itempage3()),
                      );
                    },

                    ////////image3///
                    child: Container(alignment: Alignment.center,
                      child:
                      Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F77-Combo.%D8%AA%D8%AD%D9%84.png?alt=media&token=26cb0172-ad3c-43f2-b11c-a56ac8d1071d",
                        height: 120,
                        width: 150,

                      ),
                    ),
                  ),
                    SizedBox(
                      width: 150,
                      child:
                      Column
                        (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Hot Talpat",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                          const Text(" Talpat",style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                          ),
                          ),
                          RatingBar.builder(initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
                            ),
                            onRatingUpdate: (index){},
                          ),
                          const Text("\$100",style: TextStyle(fontSize: 20,color: Colors.red,
                              fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onHighlightChanged: (value) {
                              setState(() {
                                isHighlighted44 = !isHighlighted44;
                              });
                            },
                            onTap: () {
                              setState(() {
                                isPressed44 = !isPressed44;
                              });
                            },
                            child: AnimatedContainer(
                              margin: EdgeInsets.all(isHighlighted44 ? 0 : 2.5),
                              // height: isHighlighted ? 50 : 45,
                              // width: isHighlighted ? 50 : 45,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // BoxShadow(
                                  //   color: Colors.black.withOpacity(0.2),
                                  //   blurRadius: 20,
                                  //   offset: Offset(5, 10),
                                  // ),
                                ],
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: isPressed44
                                  ? Icon(
                                Icons.favorite_border,
                                color: Colors.red.withOpacity(0.6),
                              )
                                  : Icon(
                                Icons.favorite,
                                color: Colors.pink.withOpacity(1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(width: 380,height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]
                ),
                child:
                Row(
                  children: [InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Itempage4()),
                      );
                    },
                    //////image4/////

                    child: Container(alignment: Alignment.center,
                      child:
                      Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fpizza%2Fdownload%20(7).jpg?alt=media&token=ad706e5f-b245-434e-8155-0a8f2bbad405",
                        height: 120,
                        width: 150,

                      ),
                    ),
                  ),
                    SizedBox(
                      width: 150,
                      child:
                      Column
                        (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Hot Talpat",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                          const Text(" Talpat",style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                          ),
                          ),
                          RatingBar.builder(initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
                            ),
                            onRatingUpdate: (index){},
                          ),
                          const Text("\$100",style: TextStyle(fontSize: 20,color: Colors.red,
                              fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onHighlightChanged: (value) {
                              setState(() {
                                isHighlighted55 = !isHighlighted55;
                              });
                            },
                            onTap: () {
                              setState(() {
                                isPressed55 = !isPressed55;
                              });
                            },
                            child: AnimatedContainer(
                              margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
                              // height: isHighlighted ? 50 : 45,
                              // width: isHighlighted ? 50 : 45,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // BoxShadow(
                                  //   color: Colors.black.withOpacity(0.2),
                                  //   blurRadius: 20,
                                  //   offset: Offset(5, 10),
                                  // ),
                                ],
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: isPressed55
                                  ? Icon(
                                Icons.favorite_border,
                                color: Colors.red.withOpacity(0.6),
                              )
                                  : Icon(
                                Icons.favorite,
                                color: Colors.pink.withOpacity(1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),





            Padding(padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(width: 380,height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]
                ),
                child:
                Row(
                  children: [InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Itempage5()),
                      );
                    },
                    child: Container(alignment: Alignment.center,
                      /////////////image5///////

                      child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fic%2Ficed-coffee-watercolor-set-free-png.webp?alt=media&token=848c3d63-740f-4491-a9e6-c54431b9d4c8",
                        height: 120,
                        width: 150,

                      ),
                    ),
                  ),
                    SizedBox(
                      width: 150,
                      child:
                      Column
                        (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Hot Talpat",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                          const Text(" Talpat",style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                          ),
                          ),
                          RatingBar.builder(initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
                            ),
                            onRatingUpdate: (index){},
                          ),
                          const Text("\$100",style: TextStyle(fontSize: 20,color: Colors.red,
                              fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onHighlightChanged: (value) {
                              setState(() {
                                isHighlighted66 = !isHighlighted66;
                              });
                            },
                            onTap: () {
                              setState(() {
                                isPressed66 = !isPressed66;
                              });
                            },
                            child: AnimatedContainer(
                              margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
                              // height: isHighlighted ? 50 : 45,
                              // width: isHighlighted ? 50 : 45,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // BoxShadow(
                                  //   color: Colors.black.withOpacity(0.2),
                                  //   blurRadius: 20,
                                  //   offset: Offset(5, 10),
                                  // ),
                                ],
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: isPressed66
                                  ? Icon(
                                Icons.favorite_border,
                                color: Colors.red.withOpacity(0.6),
                              )
                                  : Icon(
                                Icons.favorite,
                                color: Colors.pink.withOpacity(1.0),
                              ),
                            ),
                          ),
                        ],                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Padding(padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(width: 380,height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ]
                ),
                child:
                Row(
                  children: [InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Itempage6()),
                      );
                    },
                    child: Container(alignment: Alignment.center,
                      //////image6///////
                      child:
                      Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Ffeshig%2Fdownload%20(1).jpg?alt=media&token=1465c00b-2860-4f14-9f24-d625d8ca547c",
                        height: 120,
                        width: 150,

                      ),
                    ),
                  ),
                    SizedBox(
                      width: 150,
                      child:
                      Column
                        (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Hot Talpat",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                          const Text(" Talpat",style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                          ),
                          ),
                          RatingBar.builder(initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
                            ),
                            onRatingUpdate: (index){},
                          ),
                          const Text("\$100",style: TextStyle(fontSize: 20,color: Colors.red,
                              fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onHighlightChanged: (value) {
                              setState(() {
                                isHighlighted77 = !isHighlighted77;
                              });
                            },
                            onTap: () {
                              setState(() {
                                isPressed77 = !isPressed77;
                              });
                            },
                            child: AnimatedContainer(
                              margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
                              // height: isHighlighted ? 50 : 45,
                              // width: isHighlighted ? 50 : 45,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // BoxShadow(
                                  //   color: Colors.black.withOpacity(0.2),
                                  //   blurRadius: 20,
                                  //   offset: Offset(5, 10),
                                  // ),
                                ],
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: isPressed77
                                  ? Icon(
                                Icons.favorite_border,
                                color: Colors.red.withOpacity(0.6),
                              )
                                  : Icon(
                                Icons.favorite,
                                color: Colors.pink.withOpacity(1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //   child: Container(width: 380,height: 150,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(10),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey.withOpacity(0.5),
            //             spreadRadius: 3,
            //             blurRadius: 10,
            //             offset: const Offset(0, 3),
            //           ),
            //         ]
            //     ),
            //     child:
            //     Row(
            //       children: [InkWell(
            //         onTap: () {
            //           Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) => const Itempage7()),
            //           );
            //         },
            //         child: Container(alignment: Alignment.center,
            //           //////////image7////////
            //
            //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/Burger-Transparent-Images.png?alt=media&token=391a993d-a1e9-4492-b337-f14bdb6f02cc",
            //             height: 120,
            //             width: 150,
            //
            //           ),
            //         ),
            //       ),
            //         SizedBox(
            //           width: 150,
            //           child:
            //           Column
            //             (
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               const Text("Hot Talpat",style: TextStyle(
            //                 fontSize: 22,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //
            //               const Text(" Talpat",style: TextStyle(
            //                 fontSize: 16,
            //                 //fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //               RatingBar.builder(initialRating: 4,
            //                 minRating: 1,
            //                 direction: Axis.horizontal,
            //                 itemCount: 5,
            //                 itemSize: 18,
            //                 itemPadding: const EdgeInsets.symmetric(horizontal: 4),
            //                 itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
            //                 ),
            //                 onRatingUpdate: (index){},
            //               ),
            //               const Text("\$15",style: TextStyle(fontSize: 20,color: Colors.red,
            //                   fontWeight: FontWeight.bold),
            //               ),
            //
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: const [
            //               Icon(Icons.favorite_border,color: Colors.red,size: 26,)
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: const [
            //               Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //   child: Container(width: 380,height: 150,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(10),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey.withOpacity(0.5),
            //             spreadRadius: 3,
            //             blurRadius: 10,
            //             offset: const Offset(0, 3),
            //           ),
            //         ]
            //     ),
            //     child:
            //     Row(
            //       children: [InkWell(
            //         onTap: () {
            //           Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) => const Itempage8()),
            //           );
            //         },
            //         child: Container(alignment: Alignment.center,
            //           ///////image8//////////
            //
            //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/Burger-Transparent-Images.png?alt=media&token=391a993d-a1e9-4492-b337-f14bdb6f02cc",
            //             height: 120,
            //             width: 150,
            //
            //           ),
            //         ),
            //       ),
            //         SizedBox(
            //           width: 150,
            //           child:
            //           Column
            //             (
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               const Text("Hot Talpat",style: TextStyle(
            //                 fontSize: 22,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //
            //               const Text(" Talpat",style: TextStyle(
            //                 fontSize: 16,
            //                 //fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //               RatingBar.builder(initialRating: 4,
            //                 minRating: 1,
            //                 direction: Axis.horizontal,
            //                 itemCount: 5,
            //                 itemSize: 18,
            //                 itemPadding: const EdgeInsets.symmetric(horizontal: 4),
            //                 itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
            //                 ),
            //                 onRatingUpdate: (index){},
            //               ),
            //               const Text("\$7",style: TextStyle(fontSize: 20,color: Colors.red,
            //                   fontWeight: FontWeight.bold),
            //               ),
            //
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children:  [
            //               InkWell(
            //                 highlightColor: Colors.transparent,
            //                 splashColor: Colors.transparent,
            //                 onHighlightChanged: (value) {
            //                   setState(() {
            //                     isHighlighted = !isHighlighted;
            //                   });
            //                 },
            //                 onTap: () {
            //                   setState(() {
            //                     isPressed2 = !isPressed2;
            //                   });
            //                 },
            //                 child: AnimatedContainer(
            //                   margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
            //                   // height: isHighlighted ? 50 : 45,
            //                   // width: isHighlighted ? 50 : 45,
            //                   curve: Curves.fastLinearToSlowEaseIn,
            //                   duration: Duration(milliseconds: 300),
            //                   decoration: BoxDecoration(
            //                     boxShadow: [
            //                       // BoxShadow(
            //                       //   color: Colors.black.withOpacity(0.2),
            //                       //   blurRadius: 20,
            //                       //   offset: Offset(5, 10),
            //                       // ),
            //                     ],
            //                     color: Colors.white,
            //                     shape: BoxShape.circle,
            //                   ),
            //                   child: isPressed2
            //                       ? Icon(
            //                     Icons.favorite_border,
            //                     color: Colors.red.withOpacity(0.6),
            //                   )
            //                       : Icon(
            //                     Icons.favorite,
            //                     color: Colors.pink.withOpacity(1.0),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: const [
            //               Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //   child: Container(width: 380,height: 150,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(10),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey.withOpacity(0.5),
            //             spreadRadius: 3,
            //             blurRadius: 10,
            //             offset: const Offset(0, 3),
            //           ),
            //         ]
            //     ),
            //     child:
            //     Row(
            //       children: [InkWell(
            //         onTap: () {
            //           Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) => const Itempage9()),
            //           );
            //         },
            //         child: Container(alignment: Alignment.center,
            //           //////image9/////
            //
            //           child: Image.asset("lib/image/prodect/product/إعداد_وجبات_سريعة.jpg",
            //             height: 120,
            //             width: 150,
            //
            //           ),
            //         ),
            //       ),
            //         SizedBox(
            //           width: 150,
            //           child:
            //           Column
            //             (
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               const Text("Hot Talpat",style: TextStyle(
            //                 fontSize: 22,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //
            //               const Text(" Talpat",style: TextStyle(
            //                 fontSize: 16,
            //                 //fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //               RatingBar.builder(initialRating: 4,
            //                 minRating: 1,
            //                 direction: Axis.horizontal,
            //                 itemCount: 5,
            //                 itemSize: 18,
            //                 itemPadding: const EdgeInsets.symmetric(horizontal: 4),
            //                 itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
            //                 ),
            //                 onRatingUpdate: (index){},
            //               ),
            //               const Text("\$18",style: TextStyle(fontSize: 20,color: Colors.red,
            //                   fontWeight: FontWeight.bold),
            //               ),
            //
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children:  [
            //               InkWell(
            //                 highlightColor: Colors.transparent,
            //                 splashColor: Colors.transparent,
            //                 onHighlightChanged: (value) {
            //                   setState(() {
            //                     isHighlighted = !isHighlighted;
            //                   });
            //                 },
            //                 onTap: () {
            //                   setState(() {
            //                     isPressed2 = !isPressed2;
            //                   });
            //                 },
            //                 child: AnimatedContainer(
            //                   margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
            //                   // height: isHighlighted ? 50 : 45,
            //                   // width: isHighlighted ? 50 : 45,
            //                   curve: Curves.fastLinearToSlowEaseIn,
            //                   duration: Duration(milliseconds: 300),
            //                   decoration: BoxDecoration(
            //                     boxShadow: [
            //                       // BoxShadow(
            //                       //   color: Colors.black.withOpacity(0.2),
            //                       //   blurRadius: 20,
            //                       //   offset: Offset(5, 10),
            //                       // ),
            //                     ],
            //                     color: Colors.white,
            //                     shape: BoxShape.circle,
            //                   ),
            //                   child: isPressed2
            //                       ? Icon(
            //                     Icons.favorite_border,
            //                     color: Colors.red.withOpacity(0.6),
            //                   )
            //                       : Icon(
            //                     Icons.favorite,
            //                     color: Colors.pink.withOpacity(1.0),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: const [
            //               Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //   child: Container(width: 380,height: 150,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(10),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey.withOpacity(0.5),
            //             spreadRadius: 3,
            //             blurRadius: 10,
            //             offset: const Offset(0, 3),
            //           ),
            //         ]
            //     ),
            //     child:
            //     Row(
            //       children: [InkWell(
            //         onTap: () {
            //           Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) => const Itempage10()),
            //           );
            //         },
            //         child: Container(alignment: Alignment.center,
            //           ////////////image10//////
            //
            //           child: Image.asset("lib/image/prodect/product/إعداد_وجبات_سريعة.jpg",
            //             height: 120,
            //             width: 150,
            //
            //           ),
            //         ),
            //       ),
            //         SizedBox(
            //           width: 150,
            //           child:
            //           Column
            //             (
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               const Text("Hot Talpat",style: TextStyle(
            //                 fontSize: 22,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //
            //               const Text(" Talpat",style: TextStyle(
            //                 fontSize: 16,
            //                 //fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //               RatingBar.builder(initialRating: 4,
            //                 minRating: 1,
            //                 direction: Axis.horizontal,
            //                 itemCount: 5,
            //                 itemSize: 18,
            //                 itemPadding: const EdgeInsets.symmetric(horizontal: 4),
            //                 itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
            //                 ),
            //                 onRatingUpdate: (index){},
            //               ),
            //               const Text("\$19",style: TextStyle(fontSize: 20,color: Colors.red,
            //                   fontWeight: FontWeight.bold),
            //               ),
            //
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children:  [
            //               InkWell(
            //                 highlightColor: Colors.transparent,
            //                 splashColor: Colors.transparent,
            //                 onHighlightChanged: (value) {
            //                   setState(() {
            //                     isHighlighted = !isHighlighted;
            //                   });
            //                 },
            //                 onTap: () {
            //                   setState(() {
            //                     isPressed2 = !isPressed2;
            //                   });
            //                 },
            //                 child: AnimatedContainer(
            //                   margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
            //                   // height: isHighlighted ? 50 : 45,
            //                   // width: isHighlighted ? 50 : 45,
            //                   curve: Curves.fastLinearToSlowEaseIn,
            //                   duration: Duration(milliseconds: 300),
            //                   decoration: BoxDecoration(
            //                     boxShadow: [
            //                       // BoxShadow(
            //                       //   color: Colors.black.withOpacity(0.2),
            //                       //   blurRadius: 20,
            //                       //   offset: Offset(5, 10),
            //                       // ),
            //                     ],
            //                     color: Colors.white,
            //                     shape: BoxShape.circle,
            //                   ),
            //                   child: isPressed2
            //                       ? Icon(
            //                     Icons.favorite_border,
            //                     color: Colors.red.withOpacity(0.6),
            //                   )
            //                       : Icon(
            //                     Icons.favorite,
            //                     color: Colors.pink.withOpacity(1.0),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: const [
            //               Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //   child: Container(width: 380,height: 150,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(10),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey.withOpacity(0.5),
            //             spreadRadius: 3,
            //             blurRadius: 10,
            //             offset: const Offset(0, 3),
            //           ),
            //         ]
            //     ),
            //     child:
            //     Row(
            //       children: [InkWell(
            //         onTap: () {
            //           Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) => const Itempage11()),
            //           );
            //         },
            //         child: Container(alignment: Alignment.center,
            //           ///////image11/////
            //
            //           child: Image.asset("lib/image/prodect/product/الحمص.jpeg",
            //             height: 120,
            //             width: 150,
            //
            //           ),
            //         ),
            //       ),
            //         SizedBox(
            //           width: 150,
            //           child:
            //           Column
            //             (
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               const Text("Hot Talpat",style: TextStyle(
            //                 fontSize: 22,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //
            //               const Text(" Talpat",style: TextStyle(
            //                 fontSize: 16,
            //                 //fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //               RatingBar.builder(initialRating: 4,
            //                 minRating: 1,
            //                 direction: Axis.horizontal,
            //                 itemCount: 5,
            //                 itemSize: 18,
            //                 itemPadding: const EdgeInsets.symmetric(horizontal: 4),
            //                 itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
            //                 ),
            //                 onRatingUpdate: (index){},
            //               ),
            //               const Text("\$25",style: TextStyle(fontSize: 20,color: Colors.red,
            //                   fontWeight: FontWeight.bold),
            //               ),
            //
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               InkWell(
            //                 highlightColor: Colors.transparent,
            //                 splashColor: Colors.transparent,
            //                 onHighlightChanged: (value) {
            //                   setState(() {
            //                     isHighlighted = !isHighlighted;
            //                   });
            //                 },
            //                 onTap: () {
            //                   setState(() {
            //                     isPressed2 = !isPressed2;
            //                   });
            //                 },
            //                 child: AnimatedContainer(
            //                   margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
            //                   // height: isHighlighted ? 50 : 45,
            //                   // width: isHighlighted ? 50 : 45,
            //                   curve: Curves.fastLinearToSlowEaseIn,
            //                   duration: Duration(milliseconds: 300),
            //                   decoration: BoxDecoration(
            //                     boxShadow: [
            //                       // BoxShadow(
            //                       //   color: Colors.black.withOpacity(0.2),
            //                       //   blurRadius: 20,
            //                       //   offset: Offset(5, 10),
            //                       // ),
            //                     ],
            //                     color: Colors.white,
            //                     shape: BoxShape.circle,
            //                   ),
            //                   child: isPressed2
            //                       ? Icon(
            //                     Icons.favorite_border,
            //                     color: Colors.red.withOpacity(0.6),
            //                   )
            //                       : Icon(
            //                     Icons.favorite,
            //                     color: Colors.pink.withOpacity(1.0),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: const [
            //               Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //   child: Container(width: 380,height: 150,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(10),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey.withOpacity(0.5),
            //             spreadRadius: 3,
            //             blurRadius: 10,
            //             offset: const Offset(0, 3),
            //           ),
            //         ]
            //     ),
            //     child:
            //     Row(
            //       children: [InkWell(
            //         onTap: () {
            //           Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) => const Itempage12()),
            //           );
            //         },
            //         child: Container(alignment: Alignment.center,
            //           /////////////image12/////
            //           child: Image.asset("lib/image/prodect/product/الكبة-النية.jpeg",
            //             height: 120,
            //             width: 150,
            //
            //           ),
            //         ),
            //       ),
            //         SizedBox(
            //           width: 150,
            //           child:
            //           Column
            //             (
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               const Text("Hot Talpat",style: TextStyle(
            //                 fontSize: 22,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //
            //               const Text(" Talpat",style: TextStyle(
            //                 fontSize: 16,
            //                 //fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //               RatingBar.builder(initialRating: 4,
            //                 minRating: 1,
            //                 direction: Axis.horizontal,
            //                 itemCount: 5,
            //                 itemSize: 18,
            //                 itemPadding: const EdgeInsets.symmetric(horizontal: 4),
            //                 itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
            //                 ),
            //                 onRatingUpdate: (index){},
            //               ),
            //               const Text("\$35",style: TextStyle(fontSize: 20,color: Colors.red,
            //                   fontWeight: FontWeight.bold),
            //               ),
            //
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children:  [
            //               InkWell(
            //                 highlightColor: Colors.transparent,
            //                 splashColor: Colors.transparent,
            //                 onHighlightChanged: (value) {
            //                   setState(() {
            //                     isHighlighted = !isHighlighted;
            //                   });
            //                 },
            //                 onTap: () {
            //                   setState(() {
            //                     isPressed2 = !isPressed2;
            //                   });
            //                 },
            //                 child: AnimatedContainer(
            //                   margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
            //                   // height: isHighlighted ? 50 : 45,
            //                   // width: isHighlighted ? 50 : 45,
            //                   curve: Curves.fastLinearToSlowEaseIn,
            //                   duration: Duration(milliseconds: 300),
            //                   decoration: BoxDecoration(
            //                     boxShadow: [
            //                       // BoxShadow(
            //                       //   color: Colors.black.withOpacity(0.2),
            //                       //   blurRadius: 20,
            //                       //   offset: Offset(5, 10),
            //                       // ),
            //                     ],
            //                     color: Colors.white,
            //                     shape: BoxShape.circle,
            //                   ),
            //                   child: isPressed2
            //                       ? Icon(
            //                     Icons.favorite_border,
            //                     color: Colors.red.withOpacity(0.6),
            //                   )
            //                       : Icon(
            //                     Icons.favorite,
            //                     color: Colors.pink.withOpacity(1.0),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: const [
            //               Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //   child: Container(width: 380,height: 150,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(10),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey.withOpacity(0.5),
            //             spreadRadius: 3,
            //             blurRadius: 10,
            //             offset: const Offset(0, 3),
            //           ),
            //         ]
            //     ),
            //     child:
            //     Row(
            //       children: [InkWell(
            //         onTap: () {
            //           Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) => const Itempage13()),
            //           );
            //         },
            //         child: Container(alignment: Alignment.center,
            //           ////////////image13//
            //           child: Image.asset("lib/image/prodect/product/المحمرة.jpeg",
            //             height: 120,
            //             width: 150,
            //
            //           ),
            //
            //         ),
            //       ),
            //         SizedBox(
            //           width: 150,
            //           child:
            //           Column
            //             (
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               const Text("Hot Talpat",style: TextStyle(
            //                 fontSize: 22,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //
            //               const Text(" Talpat",style: TextStyle(
            //                 fontSize: 16,
            //                 //fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //               RatingBar.builder(initialRating: 4,
            //                 minRating: 1,
            //                 direction: Axis.horizontal,
            //                 itemCount: 5,
            //                 itemSize: 18,
            //                 itemPadding: const EdgeInsets.symmetric(horizontal: 4),
            //                 itemBuilder: (context,_)=>const
            //                 Icon(Icons.star,color: Colors.red,),
            //                 onRatingUpdate: (index){},
            //               ),
            //               const Text("\$24",style: TextStyle(fontSize: 20,color: Colors.red,
            //                   fontWeight: FontWeight.bold),
            //               ),
            //
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children:  [
            //               InkWell(
            //                 highlightColor: Colors.transparent,
            //                 splashColor: Colors.transparent,
            //                 onHighlightChanged: (value) {
            //                   setState(() {
            //                     isHighlighted5 = !isHighlighted5;
            //                   });
            //                 },
            //                 onTap: () {
            //                   setState(() {
            //                     isPressed5 = !isPressed5;
            //                   });
            //                 },
            //                 child: AnimatedContainer(
            //                   margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
            //                   // height: isHighlighted ? 50 : 45,
            //                   // width: isHighlighted ? 50 : 45,
            //                   curve: Curves.fastLinearToSlowEaseIn,
            //                   duration: Duration(milliseconds: 300),
            //                   decoration: BoxDecoration(
            //                     boxShadow: [
            //                       // BoxShadow(
            //                       //   color: Colors.black.withOpacity(0.2),
            //                       //   blurRadius: 20,
            //                       //   offset: Offset(5, 10),
            //                       // ),
            //                     ],
            //                     color: Colors.white,
            //                     shape: BoxShape.circle,
            //                   ),
            //                   child: isPressed5
            //                       ? Icon(
            //                     Icons.favorite_border,
            //                     color: Colors.red.withOpacity(0.6),
            //                   )
            //                       : Icon(
            //                     Icons.favorite,
            //                     color: Colors.pink.withOpacity(1.0),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: const [
            //               Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //   child: Container(width: 380,height: 150,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(10),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.grey.withOpacity(0.5),
            //             spreadRadius: 3,
            //             blurRadius: 10,
            //             offset: const Offset(0, 3),
            //           ),
            //         ]
            //     ),
            //     child:
            //     Row(
            //       children: [InkWell(
            //         onTap: () {
            //           Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) => const Itempage14()),
            //           );
            //         },
            //         child: Container(alignment: Alignment.center,
            //           /////image14//////
            //
            //           child: Image.asset("lib/image/prodect/product/فوائد_تناول_السمك_المشوي.jpg",
            //             height: 120,
            //             width: 150,
            //
            //           ),
            //         ),
            //       ),
            //         SizedBox(
            //           width: 150,
            //           child:
            //           Column
            //             (
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               const Text("Hot Talpat",style: TextStyle(
            //                 fontSize: 22,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //
            //               const Text(" Talpat",style: TextStyle(
            //                 fontSize: 16,
            //                 //fontWeight: FontWeight.bold,
            //               ),
            //               ),
            //               RatingBar.builder(initialRating: 4,
            //                 minRating: 1,
            //                 direction: Axis.horizontal,
            //                 itemCount: 5,
            //                 itemSize: 18,
            //                 itemPadding: const EdgeInsets.symmetric(horizontal: 4),
            //                 itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
            //                 ),
            //                 onRatingUpdate: (index){},
            //               ),
            //               const Text("\$80",style: TextStyle(fontSize: 20,color: Colors.red,
            //                   fontWeight: FontWeight.bold),
            //               ),
            //
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children:  [
            //               InkWell(
            //                 highlightColor: Colors.transparent,
            //                 splashColor: Colors.transparent,
            //                 onHighlightChanged: (value) {
            //                   setState(() {
            //                     isHighlighted = !isHighlighted;
            //                   });
            //                 },
            //                 onTap: () {
            //                   setState(() {
            //                     isPressed2 = !isPressed2;
            //                   });
            //                 },
            //                 child: AnimatedContainer(
            //                   margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
            //                   // height: isHighlighted ? 50 : 45,
            //                   // width: isHighlighted ? 50 : 45,
            //                   curve: Curves.fastLinearToSlowEaseIn,
            //                   duration: Duration(milliseconds: 300),
            //                   decoration: BoxDecoration(
            //                     boxShadow: [
            //                       // BoxShadow(
            //                       //   color: Colors.black.withOpacity(0.2),
            //                       //   blurRadius: 20,
            //                       //   offset: Offset(5, 10),
            //                       // ),
            //                     ],
            //                     color: Colors.white,
            //                     shape: BoxShape.circle,
            //                   ),
            //                   child: isPressed2
            //                       ? Icon(
            //                     Icons.favorite_border,
            //                     color: Colors.red.withOpacity(0.6),
            //                   )
            //                       : Icon(
            //                     Icons.favorite,
            //                     color: Colors.pink.withOpacity(1.0),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: const [
            //               Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

