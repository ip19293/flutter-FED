import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Data/Filiere.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Planification',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Filiere> filieres = [];
  List lists = [];
  List semaine = [
    "lundi",
    "mardi",
    "mercredi",
    "jeudi",
    "vendredi",
    "samdi",
    "dimanche"
  ];
  Future<List<Filiere>> getFilieres() async {
    final response =
        await http.get(Uri.parse('http://192.168.165.1:8080/filiere/all'));
    final response1 =
        await http.get(Uri.parse('http://192.168.165.1:8080/filiere/all'));
    lists = jsonDecode(response1.body);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        print(i['nom']);
        filieres.add(Filiere.fromJson(i));
      }
      return filieres;
    } else {
      return filieres;
    }
  }

  @override
  void initState() {
    super.initState();
    // Call the readJson method when the app starts
    getFilieres();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [  SizedBox( height: 30,),
        lists.isNotEmpty?
            Expanded(
               child: ListView.builder(
                        itemCount: 1,
                         scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(),
                          child: SingleChildScrollView(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: 600,
                                    child: ListView.builder(
                                      itemCount: lists.length,
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) =>

                                          Container(
                                              height: 580,
                                              width: 160,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 50, 68, 51),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Colors.white,
                                                      Colors.black,
                                                    ]),
                                              ),
                                              margin: EdgeInsets.all(10),
                                              padding: EdgeInsets.all(10),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      lists[index]['nom']!
                                                          .toString(),
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                    Text(
                                                       lists[index]['niveau']!
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.all(10),
                                                      child: SizedBox(
                                                        height: 400,
                                                        child:
                                                            SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                child: Row(
                                                                  children: [
                                                       
                                                                    Container(
                                                                      height:
                                                                          500,
                                                                      width:
                                                                          350,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            50,
                                                                            68,
                                                                            51),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                        gradient:
                                                                            LinearGradient(
                                                                                colors: [
                                                                              Colors.blue,
                                                                              Colors.black,
                                                                            ]),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )),
                                                      ),
                                                    )
                                                  ])),
                                    ),
                                  )
                                ]),
                          ),
                        );
                      })):Container(),
          ])));
                    }
   
  }


Widget container1 = Container(
  margin: EdgeInsets.only(),
  child: SingleChildScrollView(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 600,
          child: ListView.builder(
            itemCount: 0,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Container(
              height: 580,
              width: 160,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 50, 68, 51),
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.black,
                    ]),
              ),
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Card $index",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
);
