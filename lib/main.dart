import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('hi there');
        },
        child: Text(
          '+',
          style: TextStyle(
            fontSize: 32.0,
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Let's see some images"),
      ),
    ),
  ));
}
