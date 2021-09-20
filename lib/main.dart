import 'package:flutter/material.dart';
import 'input_box.dart';
import 'message_display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '肥宅對話產生器',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: _MyHomePage(title: '肥宅對話產生器'),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  _MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  final inputBox = InputBox(hint: 'Enter your text here');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          inputBox,
          MessageDisplay(
            textController: inputBox.textController,
          ),
        ],
      ),
    );
  }
}
