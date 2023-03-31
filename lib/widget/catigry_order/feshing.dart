import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled17/widget/cart_Newwsted/cart1_order.dart';
import 'package:untitled17/widget/cart_Newwsted/cart2_order.dart';
import 'package:untitled17/widget/catigry_order/fishcart2.dart';
import 'package:untitled17/widget/catigry_order/fishcart3.dart';
import 'package:untitled17/widget/catigry_order/fishcart4.dart';
import 'package:untitled17/widget/el-kedawe/feh-cart.dart';

import 'cat1233.dart';

class feshidet extends StatefulWidget {
  const feshidet({Key? key}) : super(key: key);

  @override
  State<feshidet> createState() => _feshidetState();
}

class _feshidetState extends State<feshidet> {
  final _firestore= FirebaseFirestore.instance;
  double reat =0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Fish section",textAlign: TextAlign.center, style: TextStyle(color: Colors.black)),
        centerTitle: true,

      ),


      body: ListView(

        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
            child:
            Container(
              padding: EdgeInsets.all(8),



              // child: InkWell(
              //   // onTap: (){
              //   //   Navigator.of(context).push(MaterialPageRoute(
              //   //       builder: (context) => const carouselwidet()));
              //   // },
              //   child: Image.asset("lib/image/categry/category/cat116.jpg",
              //     width: 50,
              //     height: 50,
              //   ),
              // ),
            ),
          ),


          CarouselSlider(

            items:[
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Ffeshig%2Fpngtree-crispy-fried-fish-png-image_5610427%20(1).jpg?alt=media&token=af39b511-3e55-4158-b878-592c079271be"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Ffeshig%2Fdownload%20(3).jpg?alt=media&token=4b700e0a-cee2-43b2-a275-bca9544b55a7"
                      ),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Ffeshig%2Fpngtree-crispy-fried-fish-png-image_5610427%20(1).jpg?alt=media&token=af39b511-3e55-4158-b878-592c079271be"
                      ),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Ffeshig%2Fpng-transparent-korean-seafood-fish-italian-cuisine-restaurant-pasta-shellfish-meal-thumbnail.png?alt=media&token=4993d146-f499-4c87-b2ad-46903dfae7a3"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
            ], options: CarouselOptions(
            height: 150,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "popular",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
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
                        builder: (context) => const fishcart1()),
                    );
                  },

                  ////////image2//////

                  child: Container(alignment: Alignment.center,
                    child:
                    Image.network(""
                        "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Ffeshig%2Fpngtree-crispy-fried-fish-png-image_5610427%20(1).jpg?alt=media&token=af39b511-3e55-4158-b878-592c079271be",
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
                          onRatingUpdate: (index){
                            reat = index;
                            _firestore.collection('star-bazoka1').add({
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
                  Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.favorite_border,color: Colors.red,size: 26,)
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
                        builder: (context) => const fishcart2()),
                    );
                  },
                  //////image3////////

                  child: Container(alignment: Alignment.center,
                    child:
                    Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Ffeshig%2Fpng-transparent-fish-meal-snack-food-fast-food-fried-fish.png?alt=media&token=45b261a3-a0f0-4ca4-9b04-f1741cdd1530"
                      ,height: 120,
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
                          onRatingUpdate: (index){
                            reat = index;
                            _firestore.collection('star-bazoka2').add({
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
                  Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.favorite_border,color: Colors.red,size: 26,)
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
                        builder: (context) => const fishcart3()),
                    );
                  },

                  ////////image3///
                  child: Container(alignment: Alignment.center,
                    child:
                    Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Ffeshig%2Fdownload.jpg?alt=media&token=f96479cf-6678-4a03-b4d6-ec2bd3893fe5",
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
                      children: const [
                        Icon(Icons.favorite_border,color: Colors.red,size: 26,)
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
                        builder: (context) => const fishcart4()),
                    );
                  },
                  //////image4/////

                  child: Container(alignment: Alignment.center,
                    child:
                    Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Ffeshig%2Fpng-transparent-fish-dish-pescado-frito-menu-food-fried-fish-fish-fry-fish.png?alt=media&token=11028ee4-6cc8-4479-aecc-34ce3d7431a5",
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
                        ////3bazoka////
                        RatingBar.builder(initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
                          ),
                          onRatingUpdate: (index){
                            reat = index;
                            _firestore.collection('star-bazoka3').add({
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
                  Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.favorite_border,color: Colors.red,size: 26,)
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
          //               builder: (context) => const CartPage2()),
          //           );
          //         },
          //         child: Container(alignment: Alignment.center,
          //           /////////////image5///////
          //
          //           child: Image.network(
          //             "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D8%AF%D9%88%D8%A8%D9%84%20%D8%A8%D9%8A%D8%AC%20%D8%AA%D8%A7%D9%8A%D8%B3%D8%AA%D9%89.jpg?alt=media&token=5731d30e-4e30-4e68-b195-d6837e61081d",
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
          //               const Text("\$2",style: TextStyle(fontSize: 20,color: Colors.red,
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
          //               builder: (context) => const CartPage2()),
          //           );
          //         },
          //         child: Container(alignment: Alignment.center,
          //           //////image6///////
          //           child: Image.network(
          //             height: 120,
          //             "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D8%B3%D9%88%D9%8A%D8%AA%20%D8%A2%D9%86%D8%AF%20%D8%B3%D8%A7%D9%88%D8%B1.jpg?alt=media&token=bdd7650b-8e25-45ba-bafa-4503f167465c",
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
          //                 onRatingUpdate: (index){
          //                   reat = index;
          //                   _firestore.collection('star-bazoka6').add({
          //                     "reat" : reat,
          //                   });
          //                 },
          //               ),
          //               const Text("\$5",style: TextStyle(fontSize: 20,color: Colors.red,
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
          //               builder: (context) => const CartPage2()),
          //           );
          //         },
          //         child: Container(alignment: Alignment.center,
          //           //////////image7////////
          //
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D8%B5%D9%88%D8%B5%20%D9%87%D9%88%D8%AA%20%D9%85%D8%A7%D8%B3%D8%AA%D8%B1%D8%AF.jpg?alt=media&token=138fcbea-0429-40bb-837c-c4e73b667054"
          //
          //             ,height: 120,
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
          //                 onRatingUpdate: (index){
          //                   reat = index;
          //                   _firestore.collection('star-bazoka7').add({
          //                     "reat" : reat,
          //                   });
          //                 },
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
          //               builder: (context) => const CartPage2()),
          //           );
          //         },
          //         child: Container(alignment: Alignment.center,
          //           ///////image8//////////
          //
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D9%84%D9%8A%D8%AA%D9%84%20%D8%AA%D8%A7%D9%8A%D8%B3%D8%AA%D9%89.jpg?alt=media&token=2f52d4be-46c4-4079-b979-8fc8e9c95a52",
          //
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
          //
          //               Text("Hot Talpat",
          //
          //                 style: TextStyle(
          //                   fontSize: 22,
          //
          //                   fontWeight: FontWeight.bold,
          //                 ),
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
          //                 onRatingUpdate: (index){
          //                   reat = index;
          //                   _firestore.collection('star-bazoka8').add({
          //                     "reat" : reat,
          //                   });
          //                 },
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
          //               builder: (context) => const CartPage2()),
          //           );
          //         },
          //         child: Container(alignment: Alignment.center,
          //           //////image9/////
          //
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D9%85%D8%A7%D9%83%20%D9%81%D8%B1%D8%A7%D9%8A%D8%B2.jpg?alt=media&token=a5c79ae7-a2f7-41fc-8437-5d2b0120fb39",
          //
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
          //                 onRatingUpdate: (index){
          //                   reat = index;
          //                   _firestore.collection('star-bazoka9').add({
          //                     "reat" : reat,
          //                   });
          //                 },
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
          //               builder: (context) => const CartPage2()),
          //           );
          //         },
          //         child: Container(alignment: Alignment.center,
          //           ////////////image10//////
          //
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D9%85%D9%83%D8%B3%202%20%D9%85%D9%8A%D9%84.jpg?alt=media&token=04bcba67-be98-478f-98ca-d435f8cc6815"
          //             ,
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
          //                 onRatingUpdate: (index){
          //                   reat = index;
          //                   _firestore.collection('star-bazoka10').add({
          //                     "reat" : reat,
          //                   });
          //                 },
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
          //               builder: (context) => const CartPage2()),
          //           );
          //         },
          //         child: Container(alignment: Alignment.center,
          //           ///////image11/////
          //
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D8%A2%D9%8A%D8%B3%20%D9%83%D8%B1%D9%8A%D9%85%20%D8%B5%D8%A7%D9%86%D8%AF%D8%A7%D9%8A%20%D8%B4%D9%88%D9%83%D9%88%D9%84%D8%A7%D8%AA%D8%A9.jpg?alt=media&token=01701b75-0010-4aee-be48-41a0898a9d70",
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
          //                 onRatingUpdate: (index){
          //                   reat = index;
          //                   _firestore.collection('star-bazoka11').add({
          //                     "reat" : reat,
          //                   });
          //                 },
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
          //               builder: (context) => const CartPage2()),
          //           );
          //         },
          //         child: Container(alignment: Alignment.center,
          //           /////////////image12/////
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D8%A8%D9%8A%D8%AC%20%D8%AA%D9%8A%D8%B3%D8%AA%D9%89.jpg?alt=media&token=eb51fcab-fa7c-466e-b658-1a63bcbae1ed",
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
          //                 onRatingUpdate: (index){
          //                   reat = index;
          //                   _firestore.collection('star-bazoka12').add({
          //                     "reat" : reat,
          //                   });
          //                 },
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
          //               builder: (context) => const CartPage2()),
          //           );
          //         },
          //         child: Container(alignment: Alignment.center,
          //           ////////////image13//
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D8%AA%D8%B4%D9%8A%D8%B2%20%D8%A8%D8%B1%D8%AC%D8%B1%20%D8%AF%D9%8A%D9%84%D9%88%D9%83%D8%B3.jpg?alt=media&token=7f3ad72e-6a58-4fa1-b6c4-6dd49a7083ca",
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
          //                 itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.red,
          //                 ),
          //                 onRatingUpdate: (index){
          //                   reat = index;
          //                   _firestore.collection('star-bazoka13').add({
          //                     "reat" : reat,
          //                   });
          //                 },
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
          //               builder: (context) => const CartPage2()),
          //           );
          //         },
          //         child: Container(alignment: Alignment.center,
          //           /////image14//////
          //
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D8%AA%D8%B4%D9%8A%D9%83%D9%86%20%D9%85%D8%A7%D9%83.jpg?alt=media&token=f54ab5d5-2088-48a4-8c1b-fbd5b6e4686c",
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
          //                 onRatingUpdate: (index){
          //                   reat = index;
          //                   _firestore.collection('star-bazoka14').add({
          //                     "reat" : reat,
          //                   });
          //                 },
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
        ],

      ),

    );
  }
}
