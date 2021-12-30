import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:pics/src/models/image_model.dart';

class App extends StatefulWidget {
  // const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    print('hi there');
    counter += 1;
    var url = Uri.https('jsonplaceholder.typicode.com', '/photos/$counter');
    var response = await http.get(url);
    var imageModel = ImageModel.fromJson(
        convert.jsonDecode(response.body) as Map<String, dynamic>);

    setState(() {
      images.add(imageModel);
    });
    print(imageModel.url);
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
