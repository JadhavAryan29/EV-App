// ignore_for_file: prefer_const_constructors

import 'package:ev_app/map_screen.dart';
import 'package:ev_app/register_screen.dart';
import 'package:ev_app/forgot_password.dart';
import 'package:flutter/material.dart';

class ScreenOnePage extends StatefulWidget {
  const ScreenOnePage({Key? key}) : super(key: key);

  @override
  State<ScreenOnePage> createState() => _ScreenOnePageState();
}

class _ScreenOnePageState extends State<ScreenOnePage> {
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
                            "Already",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            "Have an",
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
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
                  padding: const EdgeInsets.only(left: 180, top: 15),
                  child: GestureDetector(
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenTwoPage() ),);},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 50, left: 50),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 55,
                    color: Colors.teal[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenFourPage() ),);},
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                      textScaleFactor: 1,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  child: Text(
                    "New user? Register Now",
                    style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenThreePage() ),);},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
