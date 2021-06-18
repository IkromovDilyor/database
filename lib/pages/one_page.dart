

import 'package:database/pages/two_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class OnePage extends StatefulWidget {
  static final String id="one_page";
  const OnePage({Key key}) : super(key: key);

  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  final usernameController=TextEditingController();
  final passwordController=TextEditingController();

  void _doLogin(){
    String username=usernameController.text.toString().trim();
    String password=passwordController.text.toString().trim();
    var box=Hive.box("pdp_online");
    box.put("username", username);
    box.put("password", password);
    String id= box.get("username");
    String pw=box.get("password");
    print(id);
    print(pw);
  }


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
                  controller: usernameController,
                  style: TextStyle(color: Colors.white),

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person,color: Colors.white,),
                      hintText: "username",hintStyle:TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),

                    ),


                  ),
                    ),
                SizedBox(height: 15,),
                TextField(
                  controller: passwordController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline,color: Colors.white,),
                    hintText: "password",hintStyle:TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
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
                    child: FlatButton(
                      onPressed: (){
                        _doLogin;
                      },
                      child: Center(
                        child: Icon(Icons.arrow_forward,color: Colors.white,size: 40,),
                      ),
                    )
                  ),
                ),
                SizedBox(height: 99,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: Colors.white,fontSize: 15),),
                   GestureDetector(
                     onTap: (){
                       Navigator.pushNamed(context, TwoPage.id);
                     },
                     child:  Text("  SIGN UP",style: TextStyle(color: Colors.blueAccent,fontSize: 17,fontWeight: FontWeight.bold),),
                   )
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
