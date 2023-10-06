import 'package:flutter/material.dart';

class Widget019 extends StatefulWidget {
  const Widget019({super.key});

  @override
  State<Widget019> createState() => _Widget019State();
}

class _Widget019State extends State<Widget019> {
  double _size = 300;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _size = _size == 300 ? 100 : 300;
        });
      },
      child: Container(
        color: Colors.white,
        child: AnimatedSize(
          duration: const Duration(seconds: 1),
          child: FlutterLogo(
            size: _size,
          ),
        ),
      ),
    );
  }
}
