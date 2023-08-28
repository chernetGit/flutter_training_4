import 'dart:async';
import 'package:flutter/material.dart';

class Widget013 extends StatefulWidget {
  const Widget013({super.key});

  @override
  State<Widget013> createState() => _Widget013State();
}

class _Widget013State extends State<Widget013>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _AnimatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;
  @override
  void initState() {
    ColorTween _colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _colorAnimation = _colorTween.animate(_animationController);
    _AnimatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 250.0,
              height: 100.0,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.orangeAccent),
                    onPressed: () {
                      setState(() {
                        _isPressed = true;
                      });
                      _animationController.reset();
                      _animationController.forward();
                      Future.delayed(
                        const Duration(seconds: 3),
                        () {
                          setState(() {
                            _isPressed = false;
                          });
                        },
                      );
                    },
                    child: const Text("Press"),
                  ),
                  if (_isPressed) _AnimatedModalBarrier,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
