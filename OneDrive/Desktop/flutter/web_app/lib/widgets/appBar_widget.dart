// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the routes
    final List<String> appBarText = [
      "Home",
      "Skills",
      "Experience",
      "Projects",
      "Education"
    ];
    final List<String> routes = [
      '/',
      '/skills',
      '/experience',
      '/projects',
      '/education'
    ];

    return AppBar(
      shadowColor: Colors.cyan.shade100,
      backgroundColor: const Color.fromARGB(221, 0, 0, 0),
      title: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Anshu Varma",
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                for (int i = 0; i < appBarText.length; i++)
                  TextButton(
                    onPressed: () {
                      // Navigate to the respective route
                      Navigator.pushNamed(context, routes[i]);
                    },
                    child: Text(
                      appBarText[i],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/images/linkedin.png',
                  ),
                  onPressed: () {
                    // Handle LinkedIn click
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/github.png',
                  ),
                  onPressed: () {
                    // Handle GitHub click
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/instagram.png',
                  ),
                  onPressed: () {
                    // Handle Instagram click
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/resume.png',
                  ),
                  onPressed: () {
                    // Handle Resume click
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
