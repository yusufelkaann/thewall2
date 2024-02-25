// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:thewall/components/button.dart';
import 'package:thewall/components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                //logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                
                const SizedBox(height: 50,),
                // welvome back message
                Text(
                  "Lets create an acount",
                  style: TextStyle(color: Colors.grey[700],),
                ),
            
            
                const SizedBox(height: 25,),
                //email 
                MyTextfield(
                  controller: emailTextController, 
                  hintText: "Email", 
                  obscureText: false
                ),
                
                const SizedBox(height: 10,),
                //pasword

                MyTextfield(
                  controller: confirmPasswordController, 
                  hintText: "Password", 
                  obscureText: true,
                ),

                const SizedBox(height: 10,),
                //pasword

                MyTextfield(
                  controller: passwordTextController, 
                  hintText: "Confirm Password", 
                  obscureText: true,
                ),
                //sign in
                MyButton(onTap: (){} , text: "Sign up"),
            
                // go to register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an acount?",
                      style: TextStyle(color: Colors.grey[700],),
                    ),
                    const SizedBox(width: 4,),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Login now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}