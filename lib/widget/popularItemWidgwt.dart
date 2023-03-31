import 'package:flutter/material.dart';
import 'package:untitled17/homepage/Aeat_App/info_screen.dart';
import 'package:untitled17/popular-item/Popular2Itempage.dart';
import 'package:untitled17/popular-item/Popular3Itempage.dart';
import 'package:untitled17/popular-item/Popular4Itempage.dart';
import 'package:untitled17/popular-item/Popular5Itempage.dart';
import 'package:untitled17/popular-item/Popular6Itempage.dart';
import 'package:untitled17/popular-item/Popular7tempage.dart';
import 'package:untitled17/popular-item/ite1.dart';
import 'package:untitled17/widget/Categorywidget.dart';
import 'package:flutter/cupertino.dart';
class ProductOverview extends StatefulWidget {
  const ProductOverview({Key? key}) : super(key: key);

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  bool isPressed = true;
  bool isHighlighted = true;
  bool isPressed2 = true;
  bool isHighlighted2 = true;
  bool isPressed1 = true;
  bool isHighlighted1 = true;
  bool isPressed3 = true;
  bool isHighlighted3 = true;
  bool isPressed4 = true;
  bool isHighlighted4 = true;
  bool isPressed5 = true;
  bool isHighlighted5 = true;
  bool isPressed6 = true;
  bool isHighlighted6 = true;
  bool isPressed7 = true;
  bool isHighlighted7 = true;
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 5
          ),
          child: Row(
            children: [
              // for(int i=0; i<10; i++)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7,),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color:Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ]
                  ),

                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Popular1Itempage()));
                            },
                            child:
                            Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fic%2Ficed-coffee-watercolor-set-free-png.webp?alt=media&token=848c3d63-740f-4491-a9e6-c54431b9d4c8",
                              height: 130,
                            ),
                          ),
                        ),
                        Text("We will sing happiness",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 4,),
                        // Text("2 single beef or chicken sandwiches+2medium fries+2 Pepsi cans",
                        //   style: TextStyle(
                        //       fontSize: 10,
                        //       fontWeight: FontWeight.bold
                        //   ),
                        // ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("100",style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            InkWell(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onHighlightChanged: (value) {
                                setState(() {
                                  isHighlighted1 = !isHighlighted1;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  isPressed1 = !isPressed1;
                                });
                              },
                              child: AnimatedContainer(
                                margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
                                height: isHighlighted1 ? 50 : 45,
                                width: isHighlighted1 ? 50 : 45,
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
                                child: isPressed1
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
                        )
                      ],
                    ),
                  ),
                ),
              ),




              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7,),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color:Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ]
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Popular2Itempage()));
                            },
                            child:
                            Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Ffeshig%2Fdownload%20(1).jpg?alt=media&token=1465c00b-2860-4f14-9f24-d625d8ca547c",
                              height: 130,
                            ),
                          ),
                        ),
                        Text("Crispy Box",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 4,),
                        // Text("6pieces of chicken+6 pieces of strips+3bread+liter Pepsi+large coleslaw",
                        //   style: TextStyle(
                        //       fontSize: 10,
                        //       fontWeight: FontWeight.bold
                        //   ),
                        // ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\100",
                              style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            InkWell(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onHighlightChanged: (value) {
                                setState(() {
                                  isHighlighted2 = !isHighlighted2;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  isPressed2 = !isPressed2;
                                });
                              },
                              child: AnimatedContainer(
                                margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
                                height: isHighlighted2 ? 50 : 45,
                                width: isHighlighted2 ? 50 : 45,
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
                                child: isPressed2
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
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7,),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color:Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ]
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Popular3Itempage()));
                            },
                            child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D8%B3%D9%84%D8%B7%D8%A7%D8%AA%2Fdownload%20(10).jpg?alt=media&token=d2f7bafb-6bca-4009-b3af-c316c7036778",
                              height: 130,
                            ),
                          ),
                        ),
                        Text("Rice with lotus milk",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 4,),
                        // Text("Test",
                        //   style: TextStyle(
                        //       fontSize: 10,
                        //       fontWeight: FontWeight.bold
                        //   ),
                        // ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\100",style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            InkWell(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onHighlightChanged: (value) {
                                setState(() {
                                  isHighlighted3 = !isHighlighted3;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  isPressed3 = !isPressed3;
                                });
                              },
                              child: AnimatedContainer(
                                margin: EdgeInsets.all(isHighlighted3 ? 0 : 2.5),
                                height: isHighlighted3 ? 50 : 45,
                                width: isHighlighted3 ? 50 : 45,
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
                                child: isPressed3
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
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7,),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color:Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ]
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Popular4Itempage()));
                            },
                            child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D8%B3%D9%84%D8%B7%D8%A7%D8%AA%2Fimages.jpg?alt=media&token=a42557d4-2e35-4f73-a63f-e378201cfe08",
                              height: 130,
                            ),
                          ),
                        ),
                        Text("9 pieces fiesta bucket",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 4,),
                        // Text("9 chicken pieces + 2 risotto + family fries + large coleslaw + drink + bun",
                        //   style: TextStyle(
                        //       fontSize: 10,
                        //       fontWeight: FontWeight.bold
                        //   ),
                        // ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\100",style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            InkWell(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onHighlightChanged: (value) {
                                setState(() {
                                  isHighlighted4 = !isHighlighted4;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  isPressed4 = !isPressed4;
                                });
                              },
                              child: AnimatedContainer(
                                margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
                                height: isHighlighted ? 50 : 45,
                                width: isHighlighted ? 50 : 45,
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
                                child: isPressed4
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
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7,),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color:Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ]
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, "ItemPage");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Popular5Itempage()));
                              },
                              child: Image.network(
                                "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F54-Combo.jpg?alt=media&token=cf4a5cc1-1730-4380-9444-c5275ac5a4ea"
                                ,
                                height: 130,
                              ),
                            ),
                          ),
                        ),
                        Text("Happy meal cheeseburger with a piece of pineapple",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 4,),
                        // Text("Tender beef cheeseburger with a piece of pineapple and orange juice",
                        //   style: TextStyle(
                        //       fontSize: 8,
                        //       fontWeight: FontWeight.bold
                        //   ),
                        // ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$100",style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            InkWell(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onHighlightChanged: (value) {
                                setState(() {
                                  isHighlighted = !isHighlighted5;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  isPressed5 = !isPressed5;
                                });
                              },
                              child: AnimatedContainer(
                                margin: EdgeInsets.all(isHighlighted5 ? 0 : 2.5),
                                height: isHighlighted5 ? 50 : 45,
                                width: isHighlighted5 ? 50 : 45,
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
                                child: isPressed5
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
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7,),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color:Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ]
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Popular6Itempage()));
                            },
                            child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%84%D8%AD%D9%88%D9%85%2Fdownload%20(4).jpg?alt=media&token=a55de839-e0b7-4bf5-8489-fe16e0ce1ee1",
                              height: 130,
                            ),
                          ),
                        ),
                        Text("Mozzarella fingers",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 4,),
                        // Text("Sauce of your choice",
                        //   style: TextStyle(
                        //       fontSize: 10,
                        //       fontWeight: FontWeight.bold
                        //   ),
                        // ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\100",style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            InkWell(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onHighlightChanged: (value) {
                                setState(() {
                                  isHighlighted6 = !isHighlighted6;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  isPressed6 = !isPressed6;
                                });
                              },
                              child: AnimatedContainer(
                                margin: EdgeInsets.all(isHighlighted6 ? 0 : 2.5),
                                height: isHighlighted6 ? 50 : 45,
                                width: isHighlighted6 ? 50 : 45,
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
                                child: isPressed6
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
                        )
                      ],
                    ),
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7,),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color:Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ]
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Popular7tempage()));
                            },
                            child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D8%A8%D9%8A%D8%AC%20%D9%85%D8%A7%D9%83.jpg?alt=media&token=66195e08-7613-4005-af34-720d11b0d73d",
                              height: 130,
                            ),
                          ),
                        ),
                        Text("Volcano sandwich",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 4,),
                        // Text("Spicy Crispy Chicken Strips With Jalapeno,Spicy Mayonnaise,Smoked Turkey,Lettuce",
                        //   style: TextStyle(
                        //       fontSize: 8,
                        //       fontWeight: FontWeight.bold
                        //   ),
                        // ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\100",style: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            InkWell(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onHighlightChanged: (value) {
                                setState(() {
                                  isHighlighted7 = !isHighlighted7;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  isPressed7 = !isPressed7;
                                });
                              },
                              child: AnimatedContainer(
                                margin: EdgeInsets.all(isHighlighted7 ? 0 : 2.5),
                                height: isHighlighted7 ? 50 : 45,
                                width: isHighlighted7 ? 50 : 45,
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
                                child: isPressed7
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
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],),
        ),
      );
  }
}


