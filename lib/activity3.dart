// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:login/pages/calculator.dart';
import 'package:login/login_page.dart';
import 'package:login/pages/submit.page.dart';

class Activity3 extends StatefulWidget {
  final String username;
  const Activity3({required this.username, super.key});

  @override
  State<Activity3> createState() => _Activity3State();
}

class _Activity3State extends State<Activity3> {
  final List<String> _itemsprodi = ["", "Informatika", "Kimia", "Sipil", "Elektro"];
  String _dropDownValueprodi = "";

  final List<String> _itemsangkatan = ["", "2019", "2020", "2021", "2022"];
  String _dropDownValueangkatan = "";

  int _value = 1;

  TextEditingController _fullname = new TextEditingController();
  TextEditingController _address = new TextEditingController();
  TextEditingController _gender = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome! ${widget.username}",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please insert your data",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 40,
                ),
                //label "nama lengkap", textbox nama
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextField(
                        controller: _fullname,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Insert your full name",
                        ),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                //label "alamat", textfield alamat (3 baris max)
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      controller: _address,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Insert your address"),
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //label "prodi", spinner/combobox(informatika,sipil,mesin)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                        value: _dropDownValueprodi,
                        items: _itemsprodi.map((String _items) {
                          return DropdownMenuItem(
                              value: _items, child: Text(_items));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _dropDownValueprodi = newValue!;
                          });
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    DropdownButton(
                        value: _dropDownValueangkatan,
                        items: _itemsangkatan.map((String _items) {
                          return DropdownMenuItem(
                              value: _items, child: Text(_items));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _dropDownValueangkatan = newValue!;
                          });
                        }),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        }),
                    Text("Male"),
                    Radio(
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        }),
                    Text("Female"),
                  ],
                ),
                SizedBox(height: 150),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Submit(
                                fullname: _fullname.text,
                                address: _address.text,
                                jurusan: _dropDownValueprodi,
                                angkatan: _dropDownValueangkatan)));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff695CFE),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                            child: Text(
                          "Confirm",
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
                //button "back", kembali ke halaman login
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
                SizedBox(
                  height: 10,
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
