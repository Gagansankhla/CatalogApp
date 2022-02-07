// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(milliseconds: 450));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                       validator:(value) {
                         if (value!.isEmpty) {
                            return "Username can't be empty";
                          }
                          null;
                       },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value){
                         if (value!.isEmpty) {
                            return "Password can't be empty";
                          }
                          else if(value.length<6){
                              return "Password length should be atleast 6";
                          }
                          null;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Material(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 40 : 8),
                        color: Colors.orange,
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 450),
                            width: changeButton ? 40 : 120,
                            height: 40,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
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
                          ),
                        ), 
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(

                        child: Text('Sign Up with Google'),
                        onPressed: (){},
                        ),
                    ],
                  ),
                )
              ],
            ),
            
          ),
          
        ));
  }
}
