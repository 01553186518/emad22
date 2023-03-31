import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled17/get-start/get-start.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 4000,
            splashIconSize: double.infinity,
            splash:
            Image.network('https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/Untitled%20design%20(4).jpg?alt=media&token=3134b44f-2946-4303-8e4b-4f93d580f296',
              cacheHeight: 1500,
              cacheWidth: 2000,
              width: 350,
              height: 200,),
            nextScreen: GetStart(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.black
        )
    );
  }
}
