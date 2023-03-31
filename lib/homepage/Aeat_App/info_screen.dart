import 'package:flutter/material.dart';
class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
              margin: EdgeInsets.all(5),
              height: 380,
              width: double.infinity,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  image: DecorationImage(image:
                  NetworkImage("https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/Untitled%20design%20(4).jpg?alt=media&token=3134b44f-2946-4303-8e4b-4f93d580f296"),

                  )
              ),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: Colors.redAccent,),

              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              margin: EdgeInsets.only(top: 3),
              padding: EdgeInsets.all(20),
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
                        Text("RESTAURANT APP",style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
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
                        Text("It has accomplished a way to order your food from among more than 6,000 restaurants in all of Egypt…..we started in seven Arab countries and we were able to gain the trust of thousands of people in the Arab world, and now we have reached Egypt to fulfill the food that they make their orders in less than 30 seconds and they enjoy each A day with daily offers and discounts on all restaurants in 26 governorates",
                          style: TextStyle(
                              fontSize: 15,color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("emad sayed@2023",style: TextStyle(color: Colors.white,fontWeight:  FontWeight.bold
                        ),

                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8),child: Row(children: [
                    Text("Delevery   24H",
                      style: TextStyle(color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold
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
    );
  }
}
