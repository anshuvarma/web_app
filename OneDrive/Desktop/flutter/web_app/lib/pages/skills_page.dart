import 'package:flutter/material.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:web_app/widgets/row_card_widget.dart';
import 'package:web_app/widgets/skills_card.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardTitles = [
      "Programming Languages",
      "Frameworks & Version Control",
      "Databases",
      "Analytics"
    ];
    List<List<Widget>> cardDesc = [
      [
        SkillsCard(label: 'Python', assetPath: 'assets/images/python.png'),
        SkillsCard(label: 'Dart', assetPath: 'assets/images/dart.png'),
        SkillsCard(label: 'C++', assetPath: 'assets/images/c++.png'),
        SkillsCard(
            label: 'Javascript', assetPath: 'assets/images/javascript.png'),
        SkillsCard(label: 'HTML', assetPath: 'assets/images/html.png'),
        SkillsCard(label: 'CSS', assetPath: 'assets/images/css.png'),
      ],
      [
        SkillsCard(label: 'Flutter', assetPath: 'assets/images/flutter.png'),
        SkillsCard(label: 'React', assetPath: 'assets/images/reactjs.png'),
        SkillsCard(label: 'NodeJS', assetPath: 'assets/images/nodejs.png'),
        SkillsCard(label: 'Github', assetPath: 'assets/images/github.png'),
        SkillsCard(label: 'Gitlab', assetPath: 'assets/images/gitlab.png'),
        SizedBox(
          height: 20.0,
        ),
      ],
      [
        SkillsCard(label: 'MySQL', assetPath: 'assets/images/mysql.png'),
        SkillsCard(label: 'MongoDB', assetPath: 'assets/images/mongodb.png'),
        SkillsCard(
            label: 'PostgreSQL', assetPath: 'assets/images/postgresql.png'),
      ],
      [
        SkillsCard(label: 'Power BI', assetPath: 'assets/images/powerbi.png'),
        SkillsCard(label: 'Tableau', assetPath: 'assets/images/tableau.png'),
        SkillsCard(label: 'MS Excel', assetPath: 'assets/images/msexcel.png'),
        SkillsCard(label: 'ETL', assetPath: 'assets/images/etl.png'),
      ]
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
              Text(
                "Skills Page",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30.0),
              Text(
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
                cardTitles: cardTitles,
                cardDesc: cardDesc,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
