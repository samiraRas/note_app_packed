import 'package:everything_in_one_app/UI/add_note.dart';

import 'package:flutter/material.dart';
import 'package:everything_in_one_app/Route/routes.dart' as route;
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:intl/intl.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  State<CreateNotePage> createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 156, 156),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.rotate_left_sharp,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 156, 156),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.rotate_right,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 156, 156),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                        onPressed: () {
                          tempTitle = titleController.text;
                          temptext = textController.text;
                          var time = DateTime.now().toString();
                          var part = time.split(" ");
                          dateTime = part[0].trim();
                          // DateFormat.yMd().format(dateTime);

                          print(tempTitle);

                          Navigator.pop(context);
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.save,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 156, 156),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
              TextField(
                controller: titleController,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                    hintText: "Title",
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
              TextField(
                controller: textController,
                style: const TextStyle(fontSize: 18),
                decoration: const InputDecoration(
                    hintText: "Enter your text",
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
              // Align(
              //     alignment: Alignment.bottomLeft,
              //     child: FloatingActionButton(onPressed: () {}))
            ],
          ),
        ),
        floatingActionButton: SpeedDial(
          // onPressed: () {},
          children: [
            SpeedDialChild(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.image_rounded),
              ),
            ),
            SpeedDialChild(onTap: () {})
          ],
          child: const Icon(
            Icons.imagesearch_roller,
          ),
        ));
  }
}
