import 'package:flutter/material.dart';

class RowCardWidget extends StatelessWidget {
  final List<String> cardTitles;
  final List<List<Widget>> cardDesc;

  const RowCardWidget({
    required this.cardTitles,
    required this.cardDesc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
      child: SizedBox(
        height: 400, // Adjust the height as needed
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400, // Max width of each card
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            childAspectRatio: 1.0,
          ),
          itemCount: cardTitles.length,
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
                    Text(
                      cardTitles[index],
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
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
}
