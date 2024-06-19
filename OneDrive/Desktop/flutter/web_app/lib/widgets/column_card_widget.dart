import 'package:flutter/material.dart';

class ColumnCardWidget extends StatelessWidget {
  final List<String> cardTitles;
  final List<List<Widget>> cardDesc;

  const ColumnCardWidget({
    required this.cardTitles,
    required this.cardDesc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(height: 16.0),
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
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardTitles[index],
                    style: const TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: cardDesc[index],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
