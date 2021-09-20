import 'package:flutter/material.dart';
import 'input_box.dart';
import 'model/transform_logic.dart';

class MessageDisplay extends StatefulWidget {
  const MessageDisplay({Key? key, required this.textController}) : super(key: key);

  final TextEditingController textController;

  @override
  _MessageDisplayState createState() => _MessageDisplayState();
}

class _MessageDisplayState extends State<MessageDisplay> {
  late String _message = '';

  event() {
    var tempString = messageTransform(widget.textController.text);
    setState(() {
      _message = tempString;
    });
  }

  @override
  void dispose() {
    super.dispose();
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
