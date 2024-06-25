import 'package:flutter/material.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:web_app/widgets/column_card_widget.dart';
import 'package:web_app/widgets/row_card_widget.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> experienceCardTitles = [
      "NodeJS Developer",
      "Flutter Developer",
      "Graduate Engineer Trainee",
    ];
    List<List<Widget>> experienceCardDesc = [
      // NODEJS
      [
        const Text("JIO FACE"),
        // Add more skillscard as needed
      ],

      // FLUTTER
      [
        const Text("PEOPLE FIRST"),
        // Add more skillscard as needed
      ],

      // POWER BI
      [
        const Text("JIO FACE DASHBOARD"),
        // Add more skillscard as needed
      ],
    ];

    return Scaffold(
      appBar: const AppBarWidget(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: ListView(
            children: [
              const Text(
                "Experience",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Here is a summary of my professional experience.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20.0),
              ColumnCardWidget(
                cardTitles: experienceCardTitles,
                cardDesc: experienceCardDesc,
                // maxCrossAxisExtent: 700.0, // Dynamic width
                // mainAxisExtent: 250.0, // Dynamic height
                // mainAxisSpacing: 20.0,
                // crossAxisSpacing: 20.0,
                // // childAspectRatio: 2.0, // Dynamic aspect ratio
                // scrollDirection: Axis.vertical,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
