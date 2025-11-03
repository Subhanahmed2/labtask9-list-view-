import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/row_with_card_widget.dart';
import '../widgets/row_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20, // Total number of rows
          itemBuilder: (BuildContext context, int index) {
            // Check which widget to display based on index
            if (index == 0) {
              return HeaderWidget(index: index); // First row
            } else if (index >= 1 && index <= 3) {
              return RowWithCardWidget(index: index); // Second, third, fourth rows
            } else {
              return RowWidget(index: index); // Remaining rows
            }
          },
        ),
      ),
    );
  }
}
