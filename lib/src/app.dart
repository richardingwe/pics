import 'package:flutter/material.dart';

class App extends StatefulWidget {
  // const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('hi there');
            },
            child: Icon(Icons.add)),
        appBar: AppBar(
          title: Text("Let's see some images"),
        ),
      ),
    );
  }
}
