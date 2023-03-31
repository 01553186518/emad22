import 'dart:math' as math;
import 'package:awesome_card/credit_card.dart';
import 'package:awesome_card/style/card_background.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


import 'package:flutter/material.dart';



void main() => runApp(CradetCard());

class CradetCard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome Credit Card Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '',),
      debugShowCheckedModeBanner: false,

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // String cardNumber = '';
  // String cardHolderName = '';
  // String expiryDate = '';
  // String cvv = '';
  final _firestore= FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  late User signedInUser;
  bool showBack = false;
  late FocusNode _focusNode;
  TextEditingController cardNumberCtrl = TextEditingController();
  TextEditingController expiryFieldCtrl = TextEditingController();
  TextEditingController cardHolderNameCtrl = TextEditingController();
  TextEditingController cvvCtrl = TextEditingController();

  Future <void>addcradetdata(){
    return _firestore.collection('cradet').add({
    'cardNumber': cardNumberCtrl.text,
    'expiryField': expiryFieldCtrl.text,
    'cardHolderName':cardHolderNameCtrl.text,
    'cvv': cvvCtrl.text
    });
  }

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "welcom can seav cradet 💳"),backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            CreditCard(
              cardNumber: cardNumberCtrl.text,
              cardExpiry: expiryFieldCtrl.text,
              cardHolderName: cardHolderNameCtrl.text,
              cvv: cvvCtrl.text,
              bankName: 'Axis Bank',
              showBackSide: showBack,
              frontBackground: CardBackgrounds.black,
              backBackground: CardBackgrounds.white,
              showShadow: true,
              // mask: getCardTypeMask(cardType: CardType.americanExpress),
            ),
            SizedBox(
              height: 35,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: TextFormField(
                    ///////fire store///
                    controller: cardNumberCtrl,
                    decoration: InputDecoration(hintText: 'Card Number'),
                    maxLength: 16,
                    onChanged: (value) {
                      final newCardNumber = value.trim();
                      var newStr = '';
                      final step = 4;

                      for (var i = 0; i < newCardNumber.length; i += step) {
                        newStr += newCardNumber.substring(
                            i, math.min(i + step, newCardNumber.length));
                        if (i + step < newCardNumber.length) newStr += ' ';
                      }


                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: TextFormField(
                    controller: expiryFieldCtrl,
                    decoration: InputDecoration(hintText: 'Card Expiry'),
                    maxLength: 5,
                    // onChanged: (value) {
                    //   var newDateValue = value.trim();
                    //   final isPressingBackspace =
                    //       expiryDate.length > newDateValue.length;
                    //   final containsSlash = newDateValue.contains('/');
                    //
                    //   if (newDateValue.length >= 2 &&
                    //       !containsSlash &&
                    //       !isPressingBackspace) {
                    //     newDateValue = newDateValue.substring(0, 2) +
                    //         '/' +
                    //         newDateValue.substring(2);
                    //   }
                    //   setState(() {
                    //     expiryFieldCtrl.text = newDateValue;
                    //     expiryFieldCtrl.selection = TextSelection.fromPosition(
                    //         TextPosition(offset: newDateValue.length));
                    //     expiryDate = newDateValue;
                    //   });
                    // },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Card Holder Name'),
                    controller: cardHolderNameCtrl,
                    // onChanged: (value) {
                    // },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'CVV'),
                    maxLength: 3,
                    focusNode: _focusNode,
                    controller: cvvCtrl,
                  ),
                ),

                GestureDetector(
                  onTap: ()async{
                    try{
                      await addcradetdata();
                    }catch(e){
                      print(e);
                    }
                  },

                  child: Center(
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [Colors.red, Colors.black]),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                color: Colors.amber,
                                offset: Offset(2, 2))
                          ]),
                      child: Text(
                        "Save".toUpperCase(),
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.7),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}