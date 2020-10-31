import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui;

import 'package:flutter_app/login_screen.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    )
  );
}

class Homepage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(50.0),
          width:double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                  children: <Widget> [
                  Text("HELLO!",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    foreground: Paint()
                    ..shader= ui.Gradient.linear(
                      const Offset(0, 20),
                      const Offset(300,20),
                      <Color>[
                        Color(0xcc00ffff),
                        Color(0xff00cccc),
                      ],
                    )
                  ),
                  ),
                    SizedBox(height:20,),
                    Text("Good to see you here", textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15
                    ),
                    ),
                  ],  
              ),
              Container(
                height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/img/Login_pics.png')
                  )
                ),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Login",style:TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                      )
                    ),
                    child:
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: ( ){},
                      color: Colors.cyan,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text("Sign up",style:TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),),
                    ),
                  )
                ]
              )
            ],
          )
        )
      ),
    );
  }
}
