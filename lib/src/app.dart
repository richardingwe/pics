import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert' as convert;

class App extends StatefulWidget {
  // const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void fetchImage() {
    print('hi there');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('$counter'),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: fetchImage, child: Icon(Icons.add)),
        appBar: AppBar(
          title: Text("Let's see some images"),
        ),
      ),
    );
  }
}
