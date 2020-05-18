import 'package:flutter/material.dart';
import 'package:shared_preferences_concept/datashow_page.dart';
import 'package:shared_preferences_concept/db.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ShowData()));
      }),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _controller,
          ),
          FlatButton(
              onPressed: () {
                saveName();
              },
              child: Text('save data'))
        ],
      ),
    );
  }

  void saveName() {
    String name = _controller.text;
    savedNamePref(name);
  }
}