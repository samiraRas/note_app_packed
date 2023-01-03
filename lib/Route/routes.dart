import 'package:flutter/material.dart';
import 'package:everything_in_one_app/UI/splash_screen.dart';
import 'package:everything_in_one_app/UI/add_note.dart';
import 'package:everything_in_one_app/UI/create_note.dart';
import 'package:everything_in_one_app/UI/locationinMap.dart';

const String createNote = "create note";
const String addNote = "add note";
const String locationMap = "location map";
const String splashScreen = "splash screen";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashScreen:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case addNote:
      return MaterialPageRoute(builder: ((context) => const AddNotePage()));
    case createNote:
      return MaterialPageRoute(builder: ((context) => const CreateNotePage()));
    case locationMap:
      return MaterialPageRoute(builder: ((context) => const LocationMapPage()));
    default:
      throw ("error");
  }
}
