import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:power_zone/Features/API%20Screens/ApiDesign_Screen.dart';

import '../../Core/Api_Models/Model.dart';

class CardioExerciseScreen extends StatefulWidget {
  const CardioExerciseScreen({Key? key}) : super(key: key);

  @override
  State<CardioExerciseScreen> createState() => _CardioExerciseScreenState();
}

class _CardioExerciseScreenState extends State<CardioExerciseScreen> {
  List<Model> backList = [];

  Future<List<Model>> getBackApi() async {
    var uri =
        Uri.https('exercisedb.p.rapidapi.com', '/exercises/bodyPart/cardio');

    print(uri.toString());

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': 'cd8544a298msh10ddab8d8c164fdp141d91jsnb1a153832223',
      'X-RapidAPI-Host': 'exercisedb.p.rapidapi.com'
    });
    print(response.toString());
    var data = jsonDecode(response.body);
    print(data.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        backList.add(Model.fromJson(i));
      }
      return backList;
    } else {
      return backList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://i.pinimg.com/736x/53/71/b0/5371b05f42d24d26ae241638f27e7c63.jpg',
          ),
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Cardio Workout',
            style: TextStyle(
              fontSize: 29,
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: getBackApi(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.transparent,
                        color: Colors.purple,
                        strokeWidth: 5,
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return ApiDesignScreen(
                                    name: backList[index].name.toString(),
                                    gifUrl: backList[index].gifUrl.toString(),
                                    equipment:
                                        backList[index].equipment.toString(),
                                    target: backList[index].target.toString());
                              }));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      width: 0.5,
                                      color: Colors.blue,
                                      style: BorderStyle.solid,
                                    )),
                                child: Center(
                                  child: ListTile(
                                    focusColor: Colors.grey,
                                    leading: CircleAvatar(
                                      maxRadius: 35,
                                      backgroundImage: NetworkImage(
                                        backList[index].gifUrl.toString(),
                                      ),
                                    ),
                                    title: Text(
                                      backList[index]
                                          .name
                                          .toString()
                                          .toUpperCase(),
                                      style: GoogleFonts.alike(
                                        color: Colors.white.withOpacity(0.8),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.white.withOpacity(0.8),
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
