import 'package:flutter/material.dart';

class Widget018 extends StatefulWidget {
  const Widget018({super.key});

  @override
  State<Widget018> createState() => _Widget018State();
}

class _Widget018State extends State<Widget018> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50),
            child: AnimatedRotation(
              turns: turns,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(size: 100),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() => turns += 1 / 4);
            },
            style:
                ElevatedButton.styleFrom(foregroundColor: Colors.orangeAccent),
            child: const Text('Rotate Logo'),
          ),
        ],
      ),
    );
  }
}
