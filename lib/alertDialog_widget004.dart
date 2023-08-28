import 'package:flutter/material.dart';

class Widget004 extends StatelessWidget {
  const Widget004({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Show alert dialog"),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                )
              ],
              title: const Text('Flutter Mapp'),
              contentPadding: const EdgeInsets.all(20.0),
              content: const Text('This is alert dialog'),
            ),
          );
        },
      ),
    );
  }
}
