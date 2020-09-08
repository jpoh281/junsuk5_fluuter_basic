import 'package:flutter/material.dart';
import 'package:junsuk5fluuterbasic/chapter_7/page1.dart';
import 'package:junsuk5fluuterbasic/chapter_7/page2.dart';
import 'package:junsuk5fluuterbasic/chapter_7/page3.dart';

class Chapter7 extends StatefulWidget {
  @override
  _Chapter7State createState() => _Chapter7State();
}

class _Chapter7State extends State<Chapter7> {
  var _index = 0;
  var _pages = [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add, color: Colors.black), onPressed: () {})
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          '복잡한 UI',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('홈')),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment), title: Text('이용서비스')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('내 정보')),
          ]),
    );
  }
}
