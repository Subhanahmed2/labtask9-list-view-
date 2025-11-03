import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final int index;

  const HeaderWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 140.0, // Increased height to prevent overflow
      child: Card(
        elevation: 8.0,
        color: Colors.white,
        // Uncomment one of the shapes below to see the effect:
        // shape: StadiumBorder(),
        // shape: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
        // shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange.withOpacity(0.5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Barista',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0, // Slightly smaller font to fit better
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 8), // Space between texts
            Text(
              'Travel Plans',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
