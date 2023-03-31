import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled17/widget/cart_Newwsted/cart1_order.dart';
import 'package:untitled17/widget/cart_Newwsted/cart2_order.dart';

class abosamrawidet extends StatefulWidget {
  const abosamrawidet({Key? key}) : super(key: key);

  @override
  State<abosamrawidet> createState() => _abosamrawidetState();
}

class _abosamrawidetState extends State<abosamrawidet> {
  final _firestore= FirebaseFirestore.instance;
  double reat =0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("home screen",textAlign: TextAlign.center, style: TextStyle(color: Colors.black)),
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
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fpizza%2Fdownload%20(2).jpg?alt=media&token=147fce21-d910-4290-8937-644662e507b7"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fpizza%2Fdownload%20(4).jpg?alt=media&token=616a37d0-8ca9-4da0-9167-5679b3ec4d3b"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fpizza%2Fdownload%20(5).jpg?alt=media&token=4cf665d4-c876-4efe-9d60-ad983eb3e36b"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fpizza%2Fdownload%20(6).jpg?alt=media&token=92f183ef-76e0-415e-b701-b14ef4c0765b"),
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
                        builder: (context) => const CartPage1()),
                    );
                  },

                  ////////image2//////

                  child: Container(alignment: Alignment.center,
                    child:
                    Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fpizza%2Fdownload%20(7).jpg?alt=media&token=ad706e5f-b245-434e-8155-0a8f2bbad405",
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
                        builder: (context) => const CartPage2()),
                    );
                  },
                  //////image3////////

                  child: Container(alignment: Alignment.center,
                    child:
                    Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fpizza%2Fdownload%20(8).jpg?alt=media&token=c8246cad-ea73-4e4c-b877-aab68d748b17",
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
                        builder: (context) => const CartPage2()),
                    );
                  },

                  ////////image3///
                  child: Container(alignment: Alignment.center,
                    child:
                    Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fpizza%2Fdownload.jpg?alt=media&token=b110642c-7af9-4690-912a-1406e0afb863",
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
                        builder: (context) => const CartPage2()),
                    );
                  },
                  //////image4/////

                  child: Container(alignment: Alignment.center,
                    child:
                    Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fpizza%2Fdownload%20(2).jpg?alt=media&token=147fce21-d910-4290-8937-644662e507b7",
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
                        builder: (context) => const CartPage2()),
                    );
                  },
                  child: Container(alignment: Alignment.center,
                    /////////////image5///////

                    child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fpizza%2Fdownload%20(3).jpg?alt=media&token=cc92d95e-711c-4de7-b04e-19cf4e78e204",
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
                        builder: (context) => const CartPage2()),
                    );
                  },
                  child: Container(alignment: Alignment.center,
                    //////image6///////
                    child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fpizza%2Fdownload%20(5).jpg?alt=media&token=4cf665d4-c876-4efe-9d60-ad983eb3e36b",
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
                            _firestore.collection('star-bazoka6').add({
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

                  // Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: const [
                  //       Icon(Icons.favorite_border,color: Colors.red,size: 26,)
                  //     ],
                  //   ),
                  // ),
                  // Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: const [
                  //       Icon(Icons.shopping_cart,color: Colors.red,size: 26,)
                  //     ],
                  //   ),
                  // ),
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
          //           //////////image7////////
          //
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fbazooka%2Ffood-star-bazoka4%2Fnew%2F6F9983B86E3C2AE76E52B9B99BF1919A.jpg?alt=media&token=03add6c5-8e9f-43b7-aa16-422ae0b60a26",
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
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fbazooka%2Ffood-star-bazoka4%2Fnew%2F731581460C6D5A8009AD0CCE75B6C3A9.jpg?alt=media&token=ace05963-2211-4f19-9a88-421060822f5e",
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
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fbazooka%2Ffood-star-bazoka4%2Fnew%2FA2D4605D14B3DA15DB50AB4E563A0A3E.jpg?alt=media&token=323bf986-41ee-44ca-8b00-d1fb38d43f93",
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
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fbazooka%2Ffood-star-bazoka4%2Fnew%2F2C54BE9BA674F733FAB0C73A955CF5DA.jpg?alt=media&token=b89b3704-8b99-4148-b32f-ad085ddc00f1",
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
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fbazooka%2Ffood-star-bazoka4%2Fnew%2F2CFA24A0A00FCE4C0A5A603D1E25BCDA.jpg?alt=media&token=55687033-b303-447c-9eda-54b89032eb70",
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
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fbazooka%2Ffood-star-bazoka4%2F%D9%88%D8%AC%D8%A8%D8%A9%20%D8%A8%D8%A7%D8%B2%D9%88%D9%83%D8%A7%20%D8%A7%D9%84%D8%B0%D9%87%D8%A8%D9%8A%D8%A9%20%D8%A7%D9%84%D9%83%D8%A8%D9%8A%D8%B1%D8%A9.jpg?alt=media&token=6e02944c-52da-4687-870f-7d354f3aa3c2",
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
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fbazooka%2Fspeed%20_seal%2F%D8%B9%D8%B1%D8%B6%20%D8%B1%D8%A7%D8%A8%20%D8%A7%D9%84%D8%B3%D8%B9%D8%A7%D8%AF%D8%A9.jpg?alt=media&token=0b3c1716-c6bb-4587-aa4e-1365cbee1c22",
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
          //           child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fbazooka%2Fspeed%20_seal%2F%D9%88%D8%AC%D8%A8%D8%A9%20%D8%B3%D9%86%D8%A7%D9%8A%D8%A8%D8%B1%D8%A8%D8%A7%D8%B2%D9%88%D9%83%D8%A7.jpg?alt=media&token=e75f1567-6379-40e4-a88b-cedba85b2e48",
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
