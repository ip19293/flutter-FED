import 'package:flutter/material.dart';
import 'package:teste_app/Auth/constant/images_string.dart';

import 'package:teste_app/views/forms/professeur_form.dart';

class HomeP extends StatefulWidget {
  HomeP({Key? key}) : super(key: key);

  @override
  _HomePState createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 76, 150, 78),
        //elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: null,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Image(
                  image: AssetImage(iscae),
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Professeur"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfesseurForm();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.meeting_room_outlined),
              title: Text("Salle"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.play_lesson),
              title: Text("Cours"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
