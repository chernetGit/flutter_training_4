import 'package:flutter/material.dart';

class Widget027 extends StatefulWidget {
  const Widget027({super.key});

  @override
  State<Widget027> createState() => _Widget027State();
}

class _Widget027State extends State<Widget027> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        width: 500,
        height: double.infinity,
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  isShow = true;
                });
              },
              child: const Text('click'),
            ),
            if (isShow)
              BlockSemantics(
                blocking: isShow,
                child: Card(
                  color: Colors.orangeAccent,
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('This is a card'),
                        TextButton(
                            onPressed: () => setState(
                                  () {
                                    isShow = false;
                                  },
                                ),
                            child: const Text('Close'))
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
