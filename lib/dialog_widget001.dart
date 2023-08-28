import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Dialog",
      home: _Widget001(),
    );
  }
}

class _Widget001 extends StatelessWidget {
  const _Widget001({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const AboutDialog(
                  applicationIcon: FlutterLogo(),
                  applicationLegalese: 'Legalese',
                  applicationName: 'Flutter App',
                  applicationVersion: 'version 1.0.0',
                  children: [
                    Text('This is a text created by chernet with flutter')
                  ],
                ),
              );
            },
            child: const Text('Show About Dialog')),
      ),
    );
  }
}
