import 'package:flutter/material.dart';

class Widget014 extends StatefulWidget {
  const Widget014({super.key});

  @override
  State<Widget014> createState() => _Widget014State();
}

class _Widget014State extends State<Widget014> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 2),
            child: const FlutterLogo(
              size: 50,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(
                  () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                );
              },
              child: const Text("Fade Logo"))
        ],
      ),
    );
  }
}
