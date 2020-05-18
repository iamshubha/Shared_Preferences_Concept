import 'package:flutter/material.dart';
import 'package:shared_preferences_concept/db.dart';

class ShowData extends StatefulWidget {
  @override
  _ShowDataState createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
   String _name = "";
  @override
  void initState() {
    getNamePrf().then(updateData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
        child: Text(_name),
      ),
    );
  }

  void updateData(String name) {
    setState(() {
      this._name = name;
    });
  }
}   