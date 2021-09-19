import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  InputBox({Key? key, this.hint, this.enabled = true, this.maxLine = 8})
      : super(key: key);

  final String? hint;

  final int maxLine;

  final bool enabled;

  final textController = TextEditingController();

  @override
  _InputBoxState createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  @override
  void dispose() {
    // TODO: implement dispose
    widget.textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: widget.textController,
          enabled: widget.enabled,
          maxLines: widget.maxLine,
          decoration: InputDecoration.collapsed(hintText: widget.hint),
        ),
      ),
    );
  }
}