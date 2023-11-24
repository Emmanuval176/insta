import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(forceMaterialTransparency: true,
      title: Text("Instagram",
      style: TextStyle(
        fontSize: 25,color: Colors.black
        ),
        ),
        actions: [IconButton(onPressed: (){

        }, icon: Icon(Icons.favorite,color: Colors.black,))],
        backgroundColor: Colors.white,
        ),
      
        body: Column(
          children: [
            Container(
              height: 100,child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(scrollDirection: Axis.horizontal,
                  itemCount: 10,itemBuilder: (context, index) =>CircleAvatar(backgroundColor: Colors.red,radius: 50,) ,),
              )),
              Divider(),
             Expanded(
               child: ListView.builder(scrollDirection: Axis.vertical,itemCount: 10,itemBuilder: (context, index) =>  Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(height: 400,color: Colors.blue,),
                 ),
               ),),
             )
          ],
          
        ),
        
        
        );
  }
}