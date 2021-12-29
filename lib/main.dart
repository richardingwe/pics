import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
  ));
}
