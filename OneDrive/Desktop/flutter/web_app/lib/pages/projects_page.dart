import 'dart:io';

import 'package:flutter/material.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:web_app/widgets/row_card_widget.dart';
import 'package:web_app/widgets/skills_card_column.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardTitles = [
      "Portfolio",
      "Finger Detection and Counter",
      "ID & QR Code Generator",
      "Pizza Menu/Bankers Algo"
    ];

    List<String> cardDescriptions = [
      "Conceptualized, designed and developed a dynamic portfolio website using HTML, CSS, JavaScript and ReactJS",
      "A Python program that detects and counts the number of fingers displayed to the Webcam and outputs the corresponding result using various libraries like opencv, Mediapipe etc.",
      "Implemented a program that generates and ID card along with a unique QR	Code using Python and its libraries",
      "A Basic C Program that depicts Banker's Algorithm.",
    ];

    List<List<String>> tags = [
      ["Flutter", "Dart"],
      ["Python", "OpenCV", "Mediapipe"],
      ["Python"],
      ["C", "C++"]
    ];

    List<String> githubUrls = [
      "https://github.com/user/portfolio",
      "https://github.com/user/finger-detection-counter",
      "https://github.com/user/id-qr-code-generator",
      "https://github.com/user/pizza-menu-bankers-algo"
    ];

    List<List<Widget>> cardDescWidgets =
        List.generate(cardTitles.length, (index) {
      return [
        SkillsCardColumn(
          label: cardTitles[index],
          description: cardDescriptions[index],
          tags: tags[index], // Pass the List<String> directly
          githubUrl: githubUrls[index], // Pass the GitHub URL
        )
      ];
    });

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
                "Tools & Technologies",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                "I love using so many tools to make my work easier. Here are some of them.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20.0),
              RowCardWidget(
                // cardTitles: cardTitles, // This is now optional
                cardDesc: cardDescWidgets,
                maxCrossAxisExtent: 400.0,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                childAspectRatio: 1.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
