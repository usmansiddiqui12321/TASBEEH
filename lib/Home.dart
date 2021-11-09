import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'splash.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var counter = 0;
  submit(){
  setState(() {
        counter++;
    print(counter);
  });
  } 
  clear(){
    setState(() {
      counter=0;
      print(counter);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Title(color: Colors.white, child: Center(child: Text("Tasbeeh"))),
      backgroundColor: Colors.black,),
      bottomNavigationBar: BottomAppBar(
        child: Text("Please Swipe Right for More content"),
        color: Colors.grey,
        ),
      
        body: SingleChildScrollView(
        child: Column(
          children: [
          
            SizedBox(height: 40,),
            new Align(alignment: Alignment.centerLeft, child: new Text("Tasbeeh e Fatima & Durrood"
          , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),
        
            ),
          ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
            abc("assets/images/subhanAllah.PNG"),
            abc("assets/images/Alhamdulillah.PNG"),
            abc("assets/images/AllahhuAkbar.PNG"),
            abc("assets/images/durood.PNG"),
                ],
              ),
            ),
          SizedBox(height: 25,),
          Container(
            height: 50,
            width: 200,
            child: Center(
              child: Text("$counter",
              style: TextStyle(fontSize: 30,fontStyle:FontStyle.italic),
              ),
            ),
          ),
          SizedBox(height: 25,),
          Center(
            child: Container(
              child: Center(
                child: Row(children: [
                    Expanded(
                    child: Center(
                      child: OutlinedButton(onPressed: (){clear();}, child: Text("CLEAR"),style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        side: BorderSide(color: Colors.black)
                      ) ,),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: OutlinedButton(onPressed: (){submit();}, child: Text("ADD"),style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        side: BorderSide(color: Colors.black)
                      ) ,),
                    ),
                  ),
                  SizedBox(width: 10,),
                

                    ],  
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
Widget abc(String a){
    return Padding(
                    padding:EdgeInsets.all(19),
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(a),
                              
                            ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        SizedBox(height: 10,),
                        
                      ],
                    ),
                  );
                }