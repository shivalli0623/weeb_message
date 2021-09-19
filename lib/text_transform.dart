import 'package:flutter/material.dart';
import 'input_box.dart';
import 'model/transform_logic.dart';

class TextDisplay extends StatefulWidget {
  const TextDisplay({Key? key, required this.textController}) : super(key: key);

  final TextEditingController textController;

  @override
  _TextDisplayState createState() => _TextDisplayState();
}

class _TextDisplayState extends State<TextDisplay> {
  late String _message = '';

  event() {
    var tempString = messageTransform(widget.textController.text);
    setState(() {
      _message = tempString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () {
          event();
        }, child: const Text('轉換')),
        const Text('結果:'),
        InputBox(hint: _message, enabled: false,)
      ],
    );
  }
}
