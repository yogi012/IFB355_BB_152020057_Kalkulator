// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/login_page.dart';

class Activity2 extends StatefulWidget {
  const Activity2({super.key});

  @override
  State<Activity2> createState() => _Activity2State();
}

class _Activity2State extends State<Activity2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //judul registrasi
                Text(
                  "Sign up",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter information to create your",
                  style: TextStyle(fontSize: 20),
                ),
                Text("account", style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 40,
                ),
                //label "username", textbox username
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Input Username",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //label password textbox passwors1
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Input Password",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //label ulangi password, textbox password2
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Repeat your password",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 190,
                ),

                //button registrasi, pop up "berhasil Registrasi"
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("Register Success!"),
                              actions: [
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text("OK"))
                              ],
                            ));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 92, 154, 254),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                            child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        )),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                // back button
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
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
                          "Back",
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
    );
  }
}
