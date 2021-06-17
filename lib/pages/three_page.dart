import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThreePage extends StatefulWidget {
  static final String id="three_page";
  const ThreePage({Key key}) : super(key: key);

  @override
  _ThreePageState createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.cyan[900],
                  Colors.cyan[500],
                  Colors.cyan[400],
                ]
            )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            // #login, #welcome
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",style: TextStyle(color: Colors.white,fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Welcome Back",style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        SizedBox(height: 60,),
                        // #email, #password
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                                color: Color.fromRGBO(171, 171, 171, .7),blurRadius: 20,offset: Offset(0,10)),
                            ],
                          ),


                          child: Column(
                            children: [


                            ],
                          ),
                        ),
                        SizedBox(height: 40,),
                        // #login
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person,color: Colors.white,),
                            hintText: "username",hintStyle:TextStyle(color: Colors.white),



                          ),
                        ),
                        SizedBox(height: 15,),
                        TextField(

                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline,color: Colors.white,),
                            hintText: "password",hintStyle:TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green[800]
                          ),
                          child: Center(
                            child: Text("Sign In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        SizedBox(height: 30,),
                        // #login SNS

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


