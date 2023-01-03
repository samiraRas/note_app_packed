// import 'package:everything_in_one_app/UI/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:everything_in_one_app/Route/routes.dart' as route;

class AddNotePage extends StatefulWidget {
  const AddNotePage({Key? key}) : super(key: key);

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, route.createNote);
                  },
                  icon: const Icon(
                    Icons.add_circle,
                    size: 50,
                    // color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome to Notes",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "Have a Nice Day",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
