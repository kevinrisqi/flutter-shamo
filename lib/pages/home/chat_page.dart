import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Chat Page',
        style: primaryTextStyle,
      ),
    );
  }
}
