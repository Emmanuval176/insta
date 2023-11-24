import 'package:flutter/material.dart';
import 'package:insta/view/homescreen.dart';
import 'package:insta/view/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
 @override
  void initState() {
    
    super.initState();
    Future.delayed(
      Duration(seconds: 2)).then((value) => Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => loginscreen(),)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(height: 30,width: 30,color: Colors.amber,),
        
      ),
      
    );
  }
}