// import 'package:everything_in_one_app/UI/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:everything_in_one_app/Route/routes.dart' as route;

String tempTitle = "";
String temptext = "";
String dateTime = "";

class AddNotePage extends StatefulWidget {
  const AddNotePage({Key? key}) : super(key: key);

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  List addNote = [];
  var x;
  @override
  void initState() {
    setState(() {});
    super.initState();
  }

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
                    color: Color.fromARGB(255, 71, 152, 219),
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
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Have a Nice Day",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1.7 / 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 18),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      color: Colors.amber,
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  tempTitle == ""
                                      ? const Text(
                                          "Title",
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        )
                                      : Text(
                                          tempTitle,
                                          style: const TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromARGB(255, 97, 163, 238),
                                      ),
                                      child: Icon(
                                        Icons.delete,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                temptext,
                                style: const TextStyle(fontSize: 18),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  // x == null ? Text("Date") : Text(x[0]),
                                  Text(dateTime),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromARGB(255, 238, 107, 97),
                                      ),
                                      child: Icon(
                                        Icons.edit,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
