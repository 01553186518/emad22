import 'package:flutter/material.dart';
import 'package:untitled17/widget/Drawerwidet.dart';
import 'package:untitled17/widget/cartBottomNavBar.dart';
class Popular5Itempage extends StatefulWidget {
  const Popular5Itempage({Key? key}) : super(key: key);

  @override
  State<Popular5Itempage> createState() => _Popular5ItempageState();
}

class _Popular5ItempageState extends State<Popular5Itempage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: SingleChildScrollView(
        child:
        Column(
          children: [
            Container(
              // color: Colors.redAccent,
              margin: EdgeInsets.all(15),
              height: 380,
              width: double.infinity,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  image: DecorationImage(image:
                  NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/prodect%2F%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%B2%2F%D8%AF%D9%88%D8%A8%D9%84%20%D8%A8%D9%8A%D8%AC%20%D8%AA%D8%A7%D9%8A%D8%B3%D8%AA%D9%89.jpg?alt=media&token=5731d30e-4e30-4e68-b195-d6837e61081d",
                  )
                  )
              ),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.redAccent,),

              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: Colors.redAccent),
              // borderRadius :BorderRadius.only(
              //   topLeft: Radius.circular(30),
              //   topRight: Radius.circular(30),
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 10,bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("PRODECT1",style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.red.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                      offset: Offset(0, 3)
                                  ),
                                ],
                              ),
                              // child: Icon(Icons.exposure_minus_1),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.add,size: 15,),
                                    color: Colors.red,
                                    onPressed: () {
                                      setState(() {
                                        count++;
                                      });
                                    },),
                                  Text(
                                    "$count",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red
                                    ),
                                  ),
                                  IconButton(icon: Icon(Icons.minimize,size: 15,),color: Colors.red,
                                      onPressed: () {
                                        setState(() {
                                          count--;
                                          if(count<=0){
                                            count=0;
                                          }

                                        });
                                      }
                                  )],
                              ),

                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Row(
                  //   children: [
                  //     Icon(Icons.star)
                  //   ],
                  // ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Descript:",
                          style: TextStyle(
                              fontSize: 25,color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("prodect descass.",style: TextStyle(color: Colors.white,fontSize: 17
                        ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8),child: Row(children: [
                    Text("Delevery",
                      style: TextStyle(color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Icon(Icons.access_time_filled,color: Colors.white,),
                    SizedBox(width: 150,),
                    Text("20 Minuts",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,

                    ),
                    ),
                  ],
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
      drawer: Drawerwidet(),
      bottomNavigationBar: cartBottomNavBar(),
    );
  }
}
