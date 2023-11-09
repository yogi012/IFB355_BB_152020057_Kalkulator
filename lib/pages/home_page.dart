// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
          backgroundColor: Color(0xff695CFE),
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  "Option",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "About us",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "Privacy policy",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )),
      body: SafeArea(
        child: Stack(children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => _scaffoldKey.currentState!.openDrawer(),
          ),
          Center()
        ]),
      ),
    );
  }
}
