import 'package:flutter/material.dart';
import 'package:untitled17/widget/abosamra.dart';
import 'package:untitled17/widget/catigry_order/feshing.dart';
import 'package:untitled17/widget/catigry_order/ttd1.dart';
import 'package:untitled17/widget/mac/mac%20-pp.dart';
import 'package:untitled17/widget/popular_order/cold/cold-wad.dart';


class Categorywidget extends StatelessWidget {
  const Categorywidget({Key? key}) : super(key: key);
//catigry1 prodect//
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5,),
      child: Row(
        children: [
        // for(int = i = 0; i < 10; i++)
          //pading1 sandwat////
          Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
            child:
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),

                  )
                ]
              ),
              child:
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const macwidet()));
                },
                child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fbazooka%2Ffood-star-bazoka4%2F2CFA24A0A00FCE4C0A5A603D1E25BCDA.jpg?alt=media&token=b165693a-4b67-43fe-8f26-e22d6a98c054",
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),


          //piza///
          Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
            child:
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),

                    )
                  ]
              ),
              child:
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const abosamrawidet()));
                },
                child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fimages.jpg?alt=media&token=9e0511e8-0c78-40a9-8faf-0b2227ed9753",
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),

////coffe///
          Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
            child:
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),

                    )
                  ]
              ),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const could()));
                },
                child: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fic%2Ficed-coffee-watercolor-set-free-png.webp?alt=media&token=848c3d63-740f-4491-a9e6-c54431b9d4c8",
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),


          Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
            child:
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),

                    )
                  ]
              ),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const feshidet()));
                },
                child: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Ffeshig%2Fpng-transparent-fishing-exquisite-fish-icon-marine-mammal-animals-photography.png?alt=media&token=5632df32-93da-4704-961d-06c836442638",
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),


          Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
            child:
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),

                    )
                  ]
              ),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const feshi12det()));
                },
                child: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D8%B3%D9%84%D8%B7%D8%A7%D8%AA%2Fdownload%20(10).jpg?alt=media&token=d2f7bafb-6bca-4009-b3af-c316c7036778",
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),


          // Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
          //   child:
          //   Container(
          //     padding: EdgeInsets.all(8),
          //     decoration: BoxDecoration(color: Colors.white,
          //         borderRadius: BorderRadius.circular(10),
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.grey.withOpacity(0.5),
          //             spreadRadius: 2,
          //             blurRadius: 10,
          //             offset: Offset(0, 3),
          //
          //           )
          //         ]
          //     ),
          //     child: InkWell(
          //       onTap: (){
          //         Navigator.of(context).push(MaterialPageRoute(
          //             builder: (context) => const kfcwidet()));
          //       },
          //       child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fcoffe%20hot%2Fdownload.jpg?alt=media&token=c636e9ed-ce91-4e6e-b002-3b99479a8f70",
          //         width: 50,
          //         height: 50,
          //       ),
          //     ),
          //   ),
          // ),

          // Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
          //   child:
          //   Container(
          //     padding: EdgeInsets.all(8),
          //     decoration: BoxDecoration(color: Colors.white,
          //         borderRadius: BorderRadius.circular(10),
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.grey.withOpacity(0.5),
          //             spreadRadius: 2,
          //             blurRadius: 10,
          //             offset: Offset(0, 3),
          //
          //           )
          //         ]
          //     ),
          //     child: InkWell(
          //       onTap: (){
          //         Navigator.of(context).push(MaterialPageRoute(
          //             builder: (context) => const kfcwidet()));
          //       },
          //       child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fprodect1%2Fs-166930706919642.jpg?alt=media&token=c8a5df79-e31d-4eb1-916c-5c3ea89ae0e0",
          //         width: 50,
          //         height: 50,
          //       ),
          //     ),
          //   ),
          // ),

          // Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
          //   child:
          //   Container(
          //     padding: EdgeInsets.all(8),
          //     decoration: BoxDecoration(color: Colors.white,
          //         borderRadius: BorderRadius.circular(10),
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.grey.withOpacity(0.5),
          //             spreadRadius: 2,
          //             blurRadius: 10,
          //             offset: Offset(0, 3),
          //
          //           )
          //         ]
          //     ),
          //     child: InkWell(
          //       onTap: (){
          //         Navigator.of(context).push(MaterialPageRoute(
          //             builder: (context) => const kfcwidet()));
          //       },
          //       child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%82%D8%B7%D8%B9-%D9%85%D9%86-%D8%A7%D9%84%D9%84%D8%AD%D9%85-%D9%88-%D8%A7%D9%84%D8%AF%D8%AC%D8%A7%D8%AC-%D8%B9%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87%D8%A8-AR05132020-1024x640.jpg?alt=media&token=c44ec543-0a56-4cf6-b000-341223c7bd51",
          //         width: 50,
          //         height: 50,
          //       ),
          //     ),
          //   ),
          // ),

          // Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
          //   child:
          //   Container(
          //     padding: EdgeInsets.all(8),
          //     decoration: BoxDecoration(color: Colors.white,
          //         borderRadius: BorderRadius.circular(10),
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.grey.withOpacity(0.5),
          //             spreadRadius: 2,
          //             blurRadius: 10,
          //             offset: Offset(0, 3),
          //
          //           )
          //         ]
          //     ),
          //     child: InkWell(
          //       onTap: (){
          //         Navigator.of(context).push(MaterialPageRoute(
          //             builder: (context) => const kfcwidet()));
          //       },
          //       child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fcategry%2F333818057_5936974193054884_5264766224626077663_n.jpg?alt=media&token=1827e23f-4564-4cae-9ca5-b79953268be9",
          //         width: 50,
          //         height: 50,
          //       ),
          //     ),
          //   ),
          // ),
          //
          // Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
          //   child:
          //   Container(
          //     padding: EdgeInsets.all(8),
          //     decoration: BoxDecoration(color: Colors.white,
          //         borderRadius: BorderRadius.circular(10),
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.grey.withOpacity(0.5),
          //             spreadRadius: 2,
          //             blurRadius: 10,
          //             offset: Offset(0, 3),
          //
          //           )
          //         ]
          //     ),
          //     child: InkWell(
          //       onTap: (){
          //         Navigator.of(context).push(MaterialPageRoute(
          //             builder: (context) => const kfcwidet()));
          //       },
          //       child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fcategry%2F272910249_5110853315605840_8802646346150420748_n.jpg?alt=media&token=5933efc1-c4d8-42a2-a4f8-2b5a2213b51d",
          //         width: 50,
          //         height: 50,
          //       ),
          //     ),
          //   ),
          // ),
          //
          // Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
          //   child:
          //   Container(
          //     padding: EdgeInsets.all(8),
          //     decoration: BoxDecoration(color: Colors.white,
          //         borderRadius: BorderRadius.circular(10),
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.grey.withOpacity(0.5),
          //             spreadRadius: 2,
          //             blurRadius: 10,
          //             offset: Offset(0, 3),
          //
          //           )
          //         ]
          //     ),
          //     child: InkWell(
          //       onTap: (){
          //         Navigator.of(context).push(MaterialPageRoute(
          //             builder: (context) => const kfcwidet()));
          //       },
          //       child: Image.network("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2Fcategry%2F70185994_396356651256360_2515547635004211200_n.jpg?alt=media&token=32469014-3ccb-4374-819e-69a6222e42b0",
          //         width: 50,
          //         height: 50,
          //       ),
          //     ),
          //   ),
          // ),

        ],
      ),
      ),

    );
  }
}
