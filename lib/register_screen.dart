// ignore_for_file: prefer_const_constructors

import 'package:ev_app/map_screen.dart';
import 'package:flutter/material.dart';

class ScreenThreePage extends StatefulWidget {
  const ScreenThreePage({Key? key}) : super(key: key);

  @override
  State<ScreenThreePage> createState() => _ScreenThreePageState();
}

class _ScreenThreePageState extends State<ScreenThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Text(
                            "Create",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            "Account?",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Image.asset(
                        "assets/charge.png",
                        width: 110,
                        height: 110,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Username",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    maxLines: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    maxLines: 1,
                    //  maxLength: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Email",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    maxLines: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Mobile Number",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    maxLines: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Address",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    maxLines: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 40, left: 40),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 55,
                    color: Colors.teal[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ScreenFourPage()),
                      );
                    },
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                      textScaleFactor: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
