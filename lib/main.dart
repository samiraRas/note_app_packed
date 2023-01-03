import 'package:everything_in_one_app/UI/add_note.dart';
import 'package:flutter/material.dart';
import 'package:everything_in_one_app/Route/routes.dart' as route;
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.splashScreen,
    );
  }
}
