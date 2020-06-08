import 'package:flutter/material.dart';
import '../global_config.dart';

class AccountPage extends StatefulWidget {

  @override
  _AccountPageState createState() => new _AccountPageState();

}

class _AccountPageState extends State<AccountPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('我的'),
          ),
          body: new Center(
              child: null
          ),
        ),
        theme: GlobalConfig.themeData
    );
  }

}