import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return "글자를 입력하세요";
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate())
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('검증완료')));
              },
              child: Text('검증'),
            ),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
