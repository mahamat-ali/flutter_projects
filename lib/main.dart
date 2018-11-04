import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';

import './ui/fun_fact.dart';

void main() {
  runApp(new MyApp());
  // debugPaintSizeEnabled = true;
  // debugPaintLayerBordersEnabled = true;
  // debugPaintPointersEnabled = true;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FunFacts(),
      ),
    );
  }
}
