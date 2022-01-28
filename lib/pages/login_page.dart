import 'dart:ui';

import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage
({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset
            (
              "assets/images/login_image.png", 
              fit: BoxFit.cover,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text("Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
             SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ), 
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                height: 20.0,
              ), 
              InkWell(
                onTap: () async{
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(milliseconds: 450));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 450),
                  width: changeButton ? 40 : 120,
                  height: 40,
                  alignment: Alignment.center,
                  child: changeButton ?Icon(
                    Icons.done,
                    color: Colors.white,
                  ) 
                  : Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17,
                      ),
                  ),
                  decoration: BoxDecoration(
                   color: Colors.orange,
                   borderRadius:
                  BorderRadius.circular(changeButton ? 40 : 8),
                  ),
                ),
              ),
              // ElevatedButton(
              //   onPressed:(){
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(120, 30)),
              //   )
              
                ],
                ),
              )
          ],
        ),
      )
      
    );
  }
}