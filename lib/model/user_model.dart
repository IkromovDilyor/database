class User{
  String username;
  String password;
  String email;
  String phonenumber;

  User({this.username,this.password,this.email,this.phonenumber});
  User.fromJson(Map<String ,dynamic>json)
  :username=json["username"],
  password=json["password"],
  email=json["email"],
  phonenumber=json["phonenumber"];

  Map<String ,dynamic>toJson()=>{
    "username":username,
    "password":password,
    "phonenumber":phonenumber,
    "email":email,
  };
}