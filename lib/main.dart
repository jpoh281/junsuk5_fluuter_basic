import 'package:flutter/material.dart';
import 'package:junsuk5fluuterbasic/chapter_7/chp_7_home_screen.dart';
import 'package:junsuk5fluuterbasic/chapter_8/bmi_main.dart';
import 'package:junsuk5fluuterbasic/chapter_9/stopWatchPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: "Chapter7",
    ),
    Tab(
      text: "Chapter8",
    ),
    Tab(
      text: "Chapter9",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          body: TabBarView(children: [Chapter7(), BmiMain(), StopWatchPage()]),
        ));
  }
}
