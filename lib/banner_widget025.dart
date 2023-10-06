import 'package:flutter/material.dart';

class Widget025 extends StatelessWidget {
  const Widget025({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: ClipRect(
          child: Banner(
            message: "20% off",
            location: BannerLocation.topEnd,
            color: Colors.red,
            child: Container(
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.network('https://tinyurl.com/5n8ywvw3'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Flutter course (Beginners)',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.orangeAccent),
                          child: const Text("Get now"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
