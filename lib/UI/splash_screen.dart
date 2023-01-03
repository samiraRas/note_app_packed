import 'dart:async';

import 'package:everything_in_one_app/UI/add_note.dart';
import 'package:flutter/material.dart';

import 'package:everything_in_one_app/Route/routes.dart' as route;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4),
        () => Navigator.pushNamed(context, route.addNote));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/pngtree-beautiful-yellow-note-image_1420104.jpg"),
                fit: BoxFit.contain),
          ),
          // child: Padding(
          //   padding: const EdgeInsets.fromLTRB(70, 40, 40, 40),
          //   child: Column(
          //     children: [
          //       Expanded(
          //         child: Image.asset("assets/notes assets/Group 468@2x.png"),
          //       ),
          //       const SizedBox(
          //         height: 30,
          //       ),
          //       const Expanded(
          //           child: Padding(
          //         padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
          //         child: Text(
          //           "Welcome to Notes",
          //           style: TextStyle(
          //               fontSize: 19,
          //               color: Colors.white,
          //               fontWeight: FontWeight.w500),
          //         ),
          //       ))
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
