import 'dart:convert';
import 'package:eatos_app/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{
  static final _formKey = GlobalKey<FormState>();
   TextEditingController emailController =  TextEditingController();
   TextEditingController passwordController =  TextEditingController();
  String email;
  String password;

  @override
  Widget build(BuildContext context) {

    Future signIn(String email, String password) async {
      print(email);
      print(password);
      Map <String,String> data = {
        'username': email,
        'password' : password
      };

      var response = await http.post("https://d.browserapi.eatos.co/user/login",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },body:json.encode(data));
      var jsonData = json.decode(response.body);
      print(jsonData);
      var isLogin = jsonData['success'];
      if(isLogin == 1){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }else{
        Fluttertoast.showToast(
            msg: "username incorrect",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.TOP,
            timeInSecForIos: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
    }

    final pageTitle = Container(
        margin: EdgeInsets.only(top: 80),
        //crossAxisAlignment: CrossAxisAlignment.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "eatOs",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 45.0,
              ),
            ),
            Text(
              "Point of Sale",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        )
    );

    final emailField = Padding(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Container(
            color: Color(0xfff5f5f5),
            width: MediaQuery.of(context).size.width/2,
            child:Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child:TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  onChanged: (str){
                    email = emailController.text; print(email);
                    },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Email or Mobile',
                    labelStyle: TextStyle(color: Colors.blueGrey),
                  ),
                  //keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.blueGrey),
                  cursorColor: Colors.blueGrey,
                )
            )
        )
    );

    final passwordField = Padding(
        padding:EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Container(
            width: MediaQuery.of(context).size.width/2,
            color: Color(0xfff5f5f5),
            child:Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.blueGrey),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.blueGrey),
                  cursorColor: Colors.blueGrey,
                  obscureText: true,
                )
            )
        )
    );

    final loginForm = Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                  color: Color(0xfff5f5f5),
                  width: MediaQuery.of(context).size.width/2,
                  child:Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child:TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        //onSaved: (value)=> email = value,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Email or Mobile',
                          labelStyle: TextStyle(color: Colors.blueGrey),
                        ),
                        //keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.blueGrey),
                        cursorColor: Colors.blueGrey,
                      )
                  )
              )
          ),
            Container(
                width: MediaQuery.of(context).size.width/2,
                color: Color(0xfff5f5f5),
                child:Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.blueGrey),
                      cursorColor: Colors.blueGrey,
                      obscureText: true,
                    )
                )
            )],
        ),
      ),
    );

    final loginBtn = Padding(
      padding: EdgeInsets.all(25),
      child: Container(
          margin: EdgeInsets.all(30),
          height: 60.0,
          //width: MediaQuery.of(context).size.width/3,
          child: MaterialButton(
            onPressed: (){signIn(emailController.text,passwordController.text);},
            elevation: 5.0,
            //onPressed: (){},// => Navigator.pushNamed(context, homeViewRoute),
            color: Color(0xffff2d55),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8),
            ),
            child: Text(
              'SIGN IN',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20.0,
              ),
            ),
            textColor: Colors.white,
          )
      ),
    );

    final forgotPassword = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: InkWell(

        child: Center(
          child: Text(
            'Forgot your Password?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );

    final newUser = Padding(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Container(
        margin: EdgeInsets.only(top: 40.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        child: OutlineButton(
          onPressed: (){},// => Navigator.pushNamed(context, homeViewRoute),
          color: Color(0xffff2d55),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(8),
          ),
          child: Text(
            'CREATE AN ACCOUNT',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20.0,
            ),
          ),
          textColor: Color(0xffff2d55),
        ),
      ),
    );

    return Scaffold(

      body:
      DecoratedBox(

        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/cocina.jpg'),
              fit: BoxFit.cover,
            )
        ),
        child:
        Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              pageTitle,
              loginForm,
              loginBtn,
              forgotPassword,
              newUser
            ],
          ),
        ),
      ),

    );
  }
}