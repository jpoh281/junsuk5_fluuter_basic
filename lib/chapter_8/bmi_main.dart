import 'package:flutter/material.dart';
import 'package:junsuk5fluuterbasic/chapter_8/bmi_result.dart';

class BmiMain extends StatefulWidget {
  @override
  _BmiMainState createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  final _formKey = GlobalKey<FormState>();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비만도 게산기'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _heightController,
                validator: (value) {
                  if (value.trim().isEmpty) return '키를 입력하세요';
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: '키'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _weightController,
                validator: (value) {
                  if (value.trim().isEmpty) return '몸무게를 입력하세요';
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: '몸무게'),
                keyboardType: TextInputType.number,
              ),
              Container(
                  alignment: Alignment.bottomRight,
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BmiResult(
                                      height: double.parse(
                                          _heightController.text.trim()),
                                      weight: double.parse(
                                          _weightController.text.trim()),
                                    )));
                      }
                    },
                    child: Text('결과'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
