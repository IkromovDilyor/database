import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  static final String id="one_page";
  const OnePage({Key key}) : super(key: key);

  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(height: 120,),
             Column(
              crossAxisAlignment: CrossAxisAlignment.center,


              children: [
                //#image
                Container(


                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image:DecorationImage(
                          image: AssetImage("assets/images/1.jpg"),
                        fit: BoxFit.cover

                      )
                  ),

                ),
                SizedBox(height: 30,),
                Text("Welcome Back!",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height:8,),
                Text("Sign in to continue",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),
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
                SizedBox(height: 30,),
                Text("Forgot Password?",style: TextStyle(color: Colors.white,fontSize: 15),),
                SizedBox(height: 50,),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent
                  ),
                  child:Center(
                    child: Icon(Icons.arrow_forward,color: Colors.white,size: 40,),
                  ),
                ),
                SizedBox(height: 99,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: Colors.white,fontSize: 15),),
                    Text("  SIGN UP",style: TextStyle(color: Colors.blueAccent,fontSize: 17,fontWeight: FontWeight.bold),)
                  ],
                ),






              ],

            ),
          ],
        ),

        

      ),
    );
  }
}
