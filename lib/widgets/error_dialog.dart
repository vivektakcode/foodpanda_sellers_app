import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  String? message;

  ErrorDialog({this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message!),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            primary: Colors.purple,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Center(
            child: Text("OK"),
          ),
        )
      ],
    );
  }
}
