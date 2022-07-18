

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import '../authentication/auth_screen.dart';
import '../global/global.dart';
import '../main_screens/home_screen.dart';


class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  bool _isloaded = false;

  getScreen(){
    if( firebaseAuth.currentUser!=null){
      Navigator.push(context, MaterialPageRoute(builder: (c)=> const HomeScreen()));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (c)=> const AuthScreen()));
    }

  }

  startTimer(){

    Timer(const Duration(seconds: 5), () async{
      getScreen();});
}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {


          return AnimatedSplashScreen(splash: 'images/images/Food.png', nextScreen: startTimer(),  splashTransition: SplashTransition.rotationTransition);
  }
}


