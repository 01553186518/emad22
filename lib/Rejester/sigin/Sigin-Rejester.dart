import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled17/Rejester/login/Login-Rejester.dart';
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //final _auth = FirebaseAuth.instance;

  TextEditingController userEmail = new TextEditingController();
  TextEditingController userPassword = new TextEditingController();
  // String? email;
  // String? Password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              child: Lottie.asset('lib/image/api_image_anmi/82624-foodies.json'),
            ),
            SizedBox(height: 50),
            TextField(
              controller: userEmail,
              textAlign: TextAlign.center,
              // onChanged: (value) {
              //   email = value;
              // },
              decoration: InputDecoration(
                hintText: 'Enter your Email',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: userPassword,
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              textAlign: TextAlign.center,
              // onChanged: (value) {
              //   Password = value;
              // },
              decoration: InputDecoration(
                hintText: 'Enter your password',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () async{
              try {
                final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: userEmail.text,
                  password: userPassword.text,
                );
              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  print('The password provided is too weak.');
                } else if (e.code == 'email-already-in-use') {
                  print('The account already exists for that email.');
                }
              } catch (e) {
                print(e);
              }

            }, child: Text('Regester',style: TextStyle(fontSize: 20),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                ),
              ),
            ),
            // InkWell(
            //   onTap: ()=>
            //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInScreen())),
            //
            //
            //   child: Text(
            //     "Order Now",
            //     style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold
            //     ),
            //   ),
            // )
            Padding(padding: EdgeInsets.only(top: 20,left: 10),
              child: ElevatedButton(
                /////save data/////


                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20
                    ),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                },
                child: Text(
                  "Log IN",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ),
            )],
        ),
      ),
    );
  }
}