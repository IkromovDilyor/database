import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final usernameController=TextEditingController();
  final passwordController=TextEditingController();
  void _doLogin(){
    String username=usernameController.text.toString().trim();
    String password=passwordController.text.toString().trim();
    var box=Hive.box("pdp_online");
    box.put("username", username);
    box.put("password", password);
    String id=box.get("username");
    String pw=box.get("password");
    print(id);
    print(pw);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                hintText: "username"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "password"
              ),
            ),
            SizedBox(height: 10,),
            FlatButton(
             onPressed: _doLogin,
              color: Colors.blue,

              child:Text("Login") ,
            ),



          ],
        ),
      ),
    );
  }
}
