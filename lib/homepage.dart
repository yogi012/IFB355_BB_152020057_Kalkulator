// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/activity3.dart';
import 'package:login/pages/chat.dart';
import 'package:login/pages/gallery.dart';
import 'package:login/pages/calculator.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({required this.username, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String nama;
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    nama = widget.username;
    final List _pages = [
      Activity3(username: nama),
      Chat(),
      Gallery(),
      Konversi(),
    ];
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "Gallery"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: "Calculator"),
        ],
      ),
    );
  }
}
