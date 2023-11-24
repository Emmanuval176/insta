import 'package:flutter/material.dart';
import 'package:insta/view/homescreen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Registration",style: TextStyle(color: Colors.black),),backgroundColor: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText:"Name",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)) ),),
            SizedBox(height: 10,),
             TextField(
              decoration: InputDecoration(labelText:"phone or email",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)) ),),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(labelText:"Password",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)) ),),
               SizedBox(height: 10,),
               TextField(
                decoration: InputDecoration(labelText:"confirm password",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)) ),),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),));
                }, child: Text("Create"))
          ],
          
        ),
      ),
    );
  }
}