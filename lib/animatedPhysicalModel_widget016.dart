import 'package:flutter/material.dart';

class Widget016 extends StatefulWidget {
  const Widget016({super.key});

  @override
  State<Widget016> createState() => _Widget016State();
}

class _Widget016State extends State<Widget016> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedPhysicalModel(
            curve: Curves.fastOutSlowIn,
            shape: BoxShape.rectangle,
            elevation: _isFlat ? 0 : 6.0,
            color: Colors.white,
            shadowColor: Colors.black,
            duration: const Duration(microseconds: 500),
            child: const SizedBox(
              height: 120.0,
              width: 120.0,
              child: Icon(Icons.android_outlined),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isFlat = !_isFlat;
              });
            },
            child: const Text('Click'),
          ),
        ],
      ),
    );
  }
}
