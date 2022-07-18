import 'package:flutter/material.dart';
import 'package:foodpanda_sellers_app/widgets/progress_bar.dart';

class LoadingDialog extends StatelessWidget {
  String? message;

  LoadingDialog({this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          circularProgress(),
          const SizedBox(height: 20),
           Text(
            message! +", Please wait..."
          )
      ],)
    );
  }
}
