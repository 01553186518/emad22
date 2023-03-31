import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled17/widget/cart_Newwsted/cart1_order.dart';
import 'package:untitled17/widget/cart_Newwsted/cart2_order.dart';

class kfcwidet extends StatefulWidget {
  const kfcwidet({Key? key}) : super(key: key);

  @override
  State<kfcwidet> createState() => _kfcwidetState();
}

class _kfcwidetState extends State<kfcwidet> {
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
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F188-Combo.jpg?alt=media&token=05595a49-969b-47fb-881d-c9c5ea48d15b"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F38-Combo.jpg?alt=media&token=d59f345d-3640-46e8-a115-80a00b36ef0c"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F50-Combo.jpg?alt=media&token=6d9eb252-0e7a-4c1b-812a-cbf20bb7cff3"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F62-Combo.%D8%AA%D8%AD%D9%84.png?alt=media&token=1ace0072-85be-4429-ac6d-082404fbd6b1"),
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
                    Image.network(""
                        "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F77-Combo.%D8%AA%D8%AD%D9%84.png?alt=media&token=26cb0172-ad3c-43f2-b11c-a56ac8d1071d",
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
                        const Text("\$35",style: TextStyle(fontSize: 20,color: Colors.red,
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
                    Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F62-Combo.jpg?alt=media&token=f37b1188-746f-4dd4-8df6-fc05f932a1ca"


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
                        const Text("\$20",style: TextStyle(fontSize: 20,color: Colors.red,
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
                      "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F46-Combo.%D8%AA%D8%AD%D9%84.png?alt=media&token=b9de993d-0ade-423c-bb4a-0fee3d095b32",
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
                        const Text("\$40",style: TextStyle(fontSize: 20,color: Colors.red,
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
                    Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2F38-Combo.jpg?alt=media&token=d59f345d-3640-46e8-a115-80a00b36ef0c",
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
                        const Text("\$30",style: TextStyle(fontSize: 20,color: Colors.red,
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

                    child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2Fnew%2F71-Combo.png?alt=media&token=df973df5-b739-44fd-b3c2-9efa84966530",
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
                        const Text("\$2",style: TextStyle(fontSize: 20,color: Colors.red,
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
                    child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2Fnew%2F104-Combo.png?alt=media&token=85ae70b7-1b1e-4b12-acbb-a56f5c6aeca3",
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
                        const Text("\$5",style: TextStyle(fontSize: 20,color: Colors.red,
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
                    //////////image7////////

                    child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2Fnew%2F58-Combo.png?alt=media&token=20334aa6-c7b5-41cb-b384-40a56f07350a"
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
                            _firestore.collection('star-bazoka7').add({
                              "reat" : reat,
                            });
                          },
                        ),
                        const Text("\$15",style: TextStyle(fontSize: 20,color: Colors.red,
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
                    ///////image8//////////

                    child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2Fnew%2F57-Combo.png?alt=media&token=423b2fb1-a297-4023-8c3b-aeb40221ca90",

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

                        Text("Hot Talpat",

                          style: TextStyle(
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
                            _firestore.collection('star-bazoka8').add({
                              "reat" : reat,
                            });
                          },
                        ),
                        const Text("\$7",style: TextStyle(fontSize: 20,color: Colors.red,
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
                    //////image9/////

                    child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2Fnew%2F48-Combo.png?alt=media&token=9540580c-4a7b-426f-8c84-9e8589c3e13d",

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
                            _firestore.collection('star-bazoka9').add({
                              "reat" : reat,
                            });
                          },
                        ),
                        const Text("\$18",style: TextStyle(fontSize: 20,color: Colors.red,
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
                    ////////////image10//////

                    child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2Fnew%2F34-Combo.png?alt=media&token=0448cb4f-3bef-4452-8117-1ae0ecaa2dc2"
                        ,
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
                            _firestore.collection('star-bazoka10').add({
                              "reat" : reat,
                            });
                          },
                        ),
                        const Text("\$19",style: TextStyle(fontSize: 20,color: Colors.red,
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
                    ///////image11/////

                    child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2Fnew%2F32-Combo.png?alt=media&token=27c0e8f3-00c8-4a92-a04e-f1e24699ab1e",
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
                            _firestore.collection('star-bazoka11').add({
                              "reat" : reat,
                            });
                          },
                        ),
                        const Text("\$25",style: TextStyle(fontSize: 20,color: Colors.red,
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
                    /////////////image12/////
                    child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2Fnew%2F110051.png?alt=media&token=989d5c25-986d-4b3d-a348-ee086fb65592",
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
                            _firestore.collection('star-bazoka12').add({
                              "reat" : reat,
                            });
                          },
                        ),
                        const Text("\$35",style: TextStyle(fontSize: 20,color: Colors.red,
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
                    ////////////image13//
                    child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2Fnew%2F110049.png?alt=media&token=0e9d6e1d-1bcc-45bf-981d-95e7d8b209ad",
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
                            _firestore.collection('star-bazoka13').add({
                              "reat" : reat,
                            });
                          },
                        ),
                        const Text("\$24",style: TextStyle(fontSize: 20,color: Colors.red,
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
                    /////image14//////

                    child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fkfc%2Fnew%2F110008.png?alt=media&token=3e232049-ad2e-43dd-af62-d69244a1a1c6",
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
                            _firestore.collection('star-bazoka14').add({
                              "reat" : reat,
                            });
                          },
                        ),
                        const Text("\$80",style: TextStyle(fontSize: 20,color: Colors.red,
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
        ],

      ),

    );
  }
}
