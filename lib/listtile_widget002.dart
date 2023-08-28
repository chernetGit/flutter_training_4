import 'package:flutter/material.dart';

class listtile_widget002 extends StatelessWidget {
  const listtile_widget002({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AboutListTile(
        icon: Icon(Icons.info),
        applicationIcon: FlutterLogo(),
        applicationLegalese: 'Legalese',
        applicationName: 'Flutter App',
        applicationVersion: 'version 1.0.0',
        aboutBoxChildren: [
          Text('This is a text created by chernet with flutter')
        ],
      ),
    );
  }
}
