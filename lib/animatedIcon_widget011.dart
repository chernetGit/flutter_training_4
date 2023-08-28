import 'package:flutter/material.dart';

class Widget011 extends StatefulWidget {
  const Widget011({super.key});

  @override
  State<Widget011> createState() => _Widget011State();
}

class _Widget011State extends State<Widget011> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _Controller;
  @override
  void initState() {
    _Controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _Controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (_isPlay == false) {
            _Controller.forward();
            _isPlay = true;
          } else {
            _Controller.reverse();
            _isPlay = false;
          }
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: _Controller,
          size: 100,
        ),
      ),
    );
  }
}
