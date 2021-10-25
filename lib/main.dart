import 'package:flutter/material.dart';
import 'package:task1_app/ui/intro.dart';
import 'ui/musicapp.dart';
import 'ui/videoapp.dart';
import 'ui/intro.dart';
import 'ui/assetvideo.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    initialRoute: "/",
    routes: {
      "/": (context) => MyIntro(),
      "/music": (context) => myapp1(),
      "/video": (context) => VideoNetwork(),
      "/assetvideo": (context) => VideoAsset(),
    },
  ));
