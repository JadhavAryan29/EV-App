// ignore_for_file: prefer_const_constructors

import 'package:ev_app/slot_ava.dart';
import 'package:ev_app/slot_unava.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ScreenFourPage extends StatefulWidget {
  const ScreenFourPage({Key? key}) : super(key: key);

  @override
  State<ScreenFourPage> createState() => _ScreenFourPageState();
}

class _ScreenFourPageState extends State<ScreenFourPage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 7, right: 7),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    width: 160,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.teal[400]),
                    child: Center(
                      child: Text(
                        "Slot Available",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SlotAvailable()),
                    );
                  },
                ),
                SizedBox(
                  width: 25,
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => SlotUnavailable()),
                    );
                  }),
                  child: Container(
                    width: 160,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.teal[400]),
                    child: Center(
                      child: Text(
                        "Slot Unavailable",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Text(
                'Signed In as',
                style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                user.email!,
                style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
