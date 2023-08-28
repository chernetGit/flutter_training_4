import 'package:flutter/material.dart';
import 'package:flutter_training_4/animatedModalBarrier.widgets0013.dart';
import 'package:flutter_training_4/animatedOpacity_widget014.dart';
import 'package:flutter_training_4/animatedPadding_widget015.dart';
import 'package:flutter_training_4/animatedPhysicalModel_widget016.dart';
import 'package:flutter_training_4/animatedPositioned_widget017.dart';

// import 'animatedList_widget012.dart';

// import 'animatedIcon_widget011.dart';

// import 'animatedCrossFade_widget009.dart';
// import 'animatedDefaultTextStyle_widget010.dart';
// import 'AnimatedAlign-widget006.dart';

// import 'animatedBuilder_widget007.dart';
// import 'animatedContainer_widget008.dart';
// import 'align-widget005.dart';
// import 'absorbPointer_widget003.dart';

// import 'alertDialog_widget004.dart';
// import 'listtile_widget002.dart';

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
      body: const Widget017(),
    );
  }
}
