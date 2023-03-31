import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../widget/AppBarWidget.dart';
import '../widget/Categorywidget.dart';
import '../widget/Drawerwidet.dart';
import '../widget/NewstItemswidet.dart';
import '../widget/popularItemWidgwt.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
class Homepage extends StatefulWidget {
static const String screenRoute = 'Homepage';

  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 //  final _auth= FirebaseAuth.instance;
 // late User signedInUser;
 // String? messagText;
 @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getCurrentUser();
  // }

  // void getCurrentUser(){
  //
  //   try{
  //     final user=_auth.currentUser;
  //     if(user !=null){
  //       signedInUser =user;
  //       print(signedInUser.email);
  //     }
  //   }catch(e)
  //   {
  //     print(e);
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          
          ///App Bar
          AppBarWidget(),
          
          Padding(padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
            child: Container(width: double.infinity,
            height: 50,
              decoration:
              BoxDecoration
                (
                  color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white60.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),

                  ),
                ]
              ),
              child: Padding(padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
                child: Row(
                  children: [
                  Icon(
                    Icons.search,
                    color: Colors.red,
                  ),

                  Container(
                    height: 50,
                    width: 280,
                    child:  Padding(
                        padding: EdgeInsets.symmetric(
                        horizontal: 15,

                    ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "what world you like",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.filter_list)
                ],
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
          child: Text("catigry", style: TextStyle(
           fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
          ),
          Categorywidget(),
          //popular Items
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "popular",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
          ),
          //popular with
          ProductOverview(),
          //newested item
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "Newested Item",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          //new wested widht
          NewstItemswidet(),
        ],
      ),
      drawer:Drawerwidet() ,
      // floatingActionButton: Container(
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(20),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey.withOpacity(0.5),
      //         spreadRadius: 2,
      //         blurRadius: 10,
      //         offset: Offset(0, 3),
      //       ),
      //     ],),
      //   // child: FloatingActionButton(
      //   //   onPressed: () {
      //   //     Navigator.of(context).push(MaterialPageRoute(
      //   //         builder: (context) => const CartPage1()),
      //   //     );
      //   //   },
      //   //    child: InkWell(
      //   //      onTap: (){
      //   //        showSlidingBottomSheet(context,
      //   //          builder: (context){
      //   //          return SlidingSheetDialog(
      //   //            elevation: 8,
      //   //            cornerRadius: 16,
      //   //            builder: (context, state){
      //   //              return CartPage1();
      //   //            }
      //   //          );
      //   //
      //   //        },
      //   //        );
      //   //      },
      //   //    child:Icon(Icons.shopping_cart,
      //   //      size: 28,
      //   //      color: Colors.red,)
      //   //    ),
      //   //   backgroundColor: Colors.white,
      //   // ),
      // ),
    );
  }
}
