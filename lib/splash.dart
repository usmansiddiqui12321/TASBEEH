import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/Home.dart';
class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initstate(){
    super.initState();
    }
  
  @override
  Widget build(BuildContext context) {
    Timer(
            Duration(seconds: 3),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Home()
                )
              )
            );
    return Center(
      child: Scaffold(
        
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          
          child: Column(
            children: [
              SizedBox(height: 200,),
              Center(
                
                child: Container(
                  
                child: Text("TASBEEH APP" , style: TextStyle(fontSize: 50 ,)),
                  
                  height: 500,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/tasbeeh.png",
                    ),

                  
                  ),
                ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}