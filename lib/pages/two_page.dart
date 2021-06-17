import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  static final String id="two_page";
  const TwoPage({Key key}) : super(key: key);

  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(height: 80,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //#image
                Text("Create",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height:8,),
                Text("Account",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),

                SizedBox(height: 90,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person,color: Colors.white,),
                    hintText: "User Name",hintStyle:TextStyle(color: Colors.white),



                  ),
                ),
                SizedBox(height: 20,),
                TextField(

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                    hintText: "E-Mail",hintStyle:TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone,color: Colors.white,),
                    hintText: "Phone Number",hintStyle:TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.white,),
                    hintText: "Password",hintStyle:TextStyle(color: Colors.white),



                  ),
                ),

                SizedBox(height: 40,),
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
                SizedBox(height: 70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ?",style: TextStyle(color: Colors.white,fontSize: 15),),
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
