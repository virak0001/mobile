import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Check());

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool _isCheck = false;
  Image _image;
  Color _color;
  void changValue(bool value) {
    setState(() {
      _isCheck = value;
      if (_isCheck) {
        _color = Colors.red;
        _image = Image.network(
            "https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
            width: 300,
            height: 150,
            fit: BoxFit.fill);
      } else {
        _image = Image.network("");
        _color = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: _color,
          appBar: AppBar(
            title: Text("Check Box"),
            centerTitle: true,
          ),
          body: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Checkbox(
                      value: _isCheck,
                      onChanged: (bool value) {
                        changValue(value);
                      },
                    )),
                    Center(
                      child:_image,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
