import 'package:flutter/material.dart';

import 'package:demo/fil.dart';
import 'package:demo/widet.dart';
import 'package:demo/editprof.dart';

class ProfilePage extends StatelessWidget {
  String name;
  String about;
  String h1;
  String h2;
  String h3;
  ProfilePage(
      {Key? key,
      required this.name,
      required this.about,
      required this.h1,
      required this.h2,
      required this.h3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: buildAppBar(context),
      body: Column(
        children: [
          ProfileWidget(),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Text(
            '$name',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
          ),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
              width: 300,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        '$about',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        maxLines: 3,
                      )),
                  SizedBox(height: 20),
                  Align(
                      child: SizedBox(
                          child: Text(
                    'Hobbies/Interests',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[700]),
                  ))),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Spacer(flex: 1),
                      ElevatedButton(
                        child: Text(
                          '$h1',
                          style: TextStyle(fontSize: 17),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(125, 125),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[700],
                        ),
                      ),
                      Spacer(flex: 5),
                      ElevatedButton(
                        child: Text(
                          '$h2',
                          style: TextStyle(fontSize: 17),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(125, 125),
                          shape: CircleBorder(),
                          backgroundColor: Colors.grey[700],
                        ),
                      ),
                      Spacer(flex: 1),
                    ],
                  ),
                  ElevatedButton(
                    child: Text(
                      '$h3',
                      style: TextStyle(fontSize: 17),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(125, 125),
                      shape: CircleBorder(),
                      backgroundColor: Colors.grey[700],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
