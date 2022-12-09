import 'package:flutter/material.dart';

import 'package:demo/fil.dart';
import 'package:demo/widet.dart';

import 'package:demo/prof.dart';
import 'package:demo/man.dart';

import 'dart:io';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:get/get.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController name = TextEditingController(text: 'Avikshit Jha');
  TextEditingController about =
      TextEditingController(text: 'Hello man ya nothing much ya man yo');
  TextEditingController h1 = TextEditingController(text: 'quizzing');
  TextEditingController h2 = TextEditingController(text: 'badminton');
  TextEditingController h3 = TextEditingController(text: "cricket");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 28),
        children: [
          TextField(
            controller: name,
            maxLines: 1,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[700],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                labelText: 'Enter your name'),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: about,
            maxLines: 3,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[700],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                labelText: 'Enter about'),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: h1,
            maxLines: 1,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[700],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                labelText: 'Enter hobby 1'),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: h2,
            maxLines: 1,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[700],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                labelText: 'Enter hobby2'),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: h3,
            maxLines: 1,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[700],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                labelText: 'Enter hobby3'),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProfilePage(
                        name: name.text,
                        about: about.text,
                        h1: h1.text,
                        h2: h2.text,
                        h3: h3.text)));
              },
              child: Text('SAVE'))
        ],
      ),
    );
  }
}
