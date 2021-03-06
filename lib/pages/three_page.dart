import 'package:database/model/user_model.dart';
import 'package:database/pages/four_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ThreePage extends StatefulWidget {
  static final String id="three_page";
  const ThreePage({Key key}) : super(key: key);

  @override
  _ThreePageState createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  final usernameController=TextEditingController();
  final passwordController=TextEditingController();
  final phonenumberController=TextEditingController();
  final emailController=TextEditingController();

  void _doLogin(){


    String username=usernameController.toString().trim();
    String password=passwordController.toString().trim();
    String phonenumber=phonenumberController.toString().trim();
    String email=emailController.toString().trim();
    var user=new User(username:username, password: password,email: email,phonenumber: phonenumber);
    var box=Hive.box("pdp_online");
    box.put("user", user.toJson());
    var use2=new User.fromJson(box.get("user"));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color:Color(0xff077f7b),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left: 20,top: 30),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/1.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("welcome",style: TextStyle(color: Colors.teal,fontSize: 20),),
                  SizedBox(height: 10,),
                  Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 30),),
                ],
              ),
            ),
            SizedBox(height: 10,),

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

                        // #email, #password
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),

                          ),


                          child: Column(
                            children: [


                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        // #login
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: "Email",labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                            hintText: "username",hintStyle:TextStyle(color: Colors.grey),



                          ),
                        ),
                        SizedBox(height: 20,),
                        TextField(
                          controller: passwordController,

                          decoration: InputDecoration(
                            labelText: "Password",labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                            hintText: "Enter Password",hintStyle:TextStyle(color: Colors.grey,fontSize: 14),
                          ),
                        ),
                        SizedBox(height: 45,),
                        Text("Forget Password?",style: TextStyle(color: Colors.grey,fontSize: 18),),
                        SizedBox(height: 30,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color:Color(0xff077f7b),
                          ),
                          child: Center(
                            child: FlatButton(
                              onPressed: (){
                                _doLogin;
                              },
                              child:Center(
                                child:  Text("Sign In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              )
                            )
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Container(
                              width: 120,
                              height: 1,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 20,),
                            Text("OR",style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 20,),
                            Container(
                              width: 120,
                              height: 1,
                              color: Colors.grey,
                            ),

                          ],
                        ),
                        SizedBox(height: 40,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height:50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                            image: DecorationImage(

                              image: AssetImage("assets/images/fl.png",),
                              fit: BoxFit.cover,
                            ),
                              ),

                            ),
                            SizedBox(width: 25,),
                            Container(
                              height:50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(

                                  image: AssetImage("assets/images/t_logo.png",),
                                  fit: BoxFit.cover,

                                ),

                              ),

                            ),
                            SizedBox(width: 25,),
                            Container(
                              height:50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(

                                  image: AssetImage("assets/images/i_logo.png",),
                                  fit: BoxFit.cover,

                                ),

                              ),

                            ),

                          ],
                        ),
                        SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context,FourPage.id);
                        },
                        child: Text("  Sign Up",style: TextStyle(color: Color(0xff077f7b),fontSize: 17,fontWeight: FontWeight.bold),),

                      ),

                  ],
                )
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


