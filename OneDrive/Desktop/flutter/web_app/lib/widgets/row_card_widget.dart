import 'package:flutter/material.dart';

class RowCardWidget extends StatelessWidget {
  final List<String>
      cardTitles; // Make cardTitles optional with a default value
  final List<List<Widget>> cardDesc;
  // final String githubUrl;
  final double? mainAxisExtent; // Max height of each card
  final double maxCrossAxisExtent; // Max width of each card
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double? childAspectRatio; // Aspect ratio of each card
  final Axis scrollDirection; // Scroll direction of the grid

  const RowCardWidget({
    this.cardTitles = const [], // Provide a default empty list
    required this.cardDesc,
    this.mainAxisExtent,
    // this.githubUrl = 'Could not launch',
    required this.maxCrossAxisExtent,
    this.mainAxisSpacing = 16.0,
    this.crossAxisSpacing = 16.0,
    this.childAspectRatio,
    this.scrollDirection = Axis.vertical,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final titles = cardTitles.isNotEmpty
        ? cardTitles
        : List.filled(
            cardDesc.length, ""); // Use empty strings if cardTitles is empty
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
      child: SizedBox(
        height: mainAxisExtent ?? 400, // Use dynamic height or default to 400
        child: GridView.builder(
          scrollDirection: scrollDirection,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: mainAxisExtent,
            maxCrossAxisExtent: maxCrossAxisExtent,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
            childAspectRatio: childAspectRatio ?? 1.0,
          ),
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
              shadowColor: Colors.cyan.shade50,
              elevation: 5.0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                  width: 0.5,
                ),
              ),
              child: Container(
                color: Colors.black87,
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (titles[index].isNotEmpty)
                      Text(
                        titles[index],
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
                    const SizedBox(height: 10.0),
                    Wrap(
                      spacing: 10.0, // Adjust spacing between items
                      runSpacing: 10.0, // Adjust spacing between lines
                      children: cardDesc[index],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  launchUrl(Uri parse) {}
}
