// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, unnecessary_new

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/activity2.dart';
import 'package:login/activity3.dart';
import 'package:login/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _username = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                Text(
                  "Sign in",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Here's your first step",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "with us!",
                  style: TextStyle(fontSize: 20),
                ),

                SizedBox(
                  height: 40,
                ),

                // input text username
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextFormField(
                        controller: _username,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter correct username';
                          } else {
                            return null;
                          }
                        },
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),

                //input text password
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextFormField(
                          controller: _password,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter correct password';
                            } else {
                              return null;
                            }
                          }),
                    )),
                SizedBox(
                  height: 270,
                ),

                //button login
                GestureDetector(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                    username: _username.text,
                                  )));
                    }
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 92, 154, 254),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                            child: Text(
                          "Log in",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                //button register
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Activity2()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xff695CFE)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                            child: Text(
                          "Register",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff695CFE)),
                        )),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
