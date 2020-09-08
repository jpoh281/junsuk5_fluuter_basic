import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final dummyItems = [
  'http://cdn.pixabay.com/photo/2018/11/12/18/44/thanksgiving-3811492_1280.jpg',
  'http://cdn.pixabay.com/photo/2019/10/30/15/33/tajikistan-4589831_1280.jpg',
  'http://cdn.pixabay.com/photo/2019/11/25/16/15/safari-4652364_1280.jpg'
];

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[_buildTop(), _buildMiddle(), _buildBottom()],
    );
  }
}

Widget _buildTop() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _taxiIcon(title: "택시"),
            _taxiIcon(title: "블랙"),
            _taxiIcon(title: "바이크"),
            _taxiIcon(title: "대리"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _taxiIcon(title: "택시"),
            _taxiIcon(title: "블랙"),
            _taxiIcon(title: "바이크"),
            Opacity(opacity: 0.0, child: _taxiIcon(title: "대리")),
          ],
        ),
      ],
    ),
  );
}

Widget _buildMiddle() {
  return CarouselSlider(
    options: CarouselOptions(height: 150, autoPlay: true),
    items: dummyItems.map((url) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      );
    }).toList(),
  );
}

Widget _buildBottom() {
  final items = List.generate(10, (i) {
    return ListTile(
      leading: Icon(Icons.notifications_none),
      title: Text('[이벤트] 이것은 중요한 공지사항 입니다.'),
    );
  });
  return ListView(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: items,
  );
}

Widget _taxiIcon({String title}) {
  return GestureDetector(
    onTap: () {
      print('$title 클릭');
    },
    child: Column(
      children: <Widget>[
        Icon(
          Icons.local_taxi,
          size: 40,
        ),
        Text(title),
      ],
    ),
  );
}
