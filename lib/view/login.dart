import 'package:flutter/material.dart';
import 'package:insta/view/homescreen.dart';
import 'package:insta/view/registerscreen.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("LOGIN",style: TextStyle(color: Colors.black),),backgroundColor: Colors.white,),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(labelText: "email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),));
              }, child: Text("Login")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));

              }, child: Text("Create account")),
            
          ],
        ),
      ),
    );
  }
}