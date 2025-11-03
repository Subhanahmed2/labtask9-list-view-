import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final int index;

  const RowWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      title: Text('Row $index'),
      subtitle: const Text('Default row widget'),
      trailing: Text('${index * 5}'),
      onTap: () {
        print('Tapped on Row $index');
      },
    );
  }
}
