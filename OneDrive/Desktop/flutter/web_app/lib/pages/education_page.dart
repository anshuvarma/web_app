// ignore_for_file: unused_import, unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:web_app/widgets/column_card_widget.dart';
import 'package:web_app/widgets/row_card_widget.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> appBarText = [
      "Home",
      "Skills",
      "Experience",
      "Projects",
      "Education"
    ];
    List<String> cardTitles = ["Graduation", "Higher Secondary", "Secondary"];
    List<List<Widget>> cardDesc = [
      [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Degree : Bachelor of Engineering',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'Specialization: Computer Engineering',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'College : Datta Meghe College of Engineering',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'May 2018 - May 2022 - 4 years ',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'Score : 9.17 CGPA',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
      [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Degree : Higher Secondary School',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'Specialization: Science',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'College : R.K.Talreja Jr College',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'May 2016 - May 2018 - 2 years ',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'Score : 76%',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
      [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Degree : Secondary School',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'School : New Era English High',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'May 2003 - May 2013 - 13 years ',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              'Score : 85.40%',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ]
    ];
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Academic Education",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "A quick glimpse into my educational journey",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ColumnCardWidget(
                  cardTitles: cardTitles,
                  cardDesc: cardDesc,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
