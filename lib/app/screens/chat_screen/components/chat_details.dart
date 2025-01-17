import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gitterapi/models.dart';

import 'chat_bubble.dart';

class ChatDetailDailog extends StatelessWidget {
  final Message message;
  final bool isOneToOne;

  const ChatDetailDailog({
    Key key,
    @required this.message,
    this.isOneToOne = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: [
          ChatBubble(
            message: message,
            isOneToOne: isOneToOne,
          ),
          Column(
            children: [
              ListTile(
                title: const Text('Mention'),
                leading: Icon(Icons.alternate_email_rounded),
                hoverColor: Colors.blue.withOpacity(0.1),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Quote'),
                leading: Icon(Icons.format_quote_outlined),
                hoverColor: Colors.blue.withOpacity(0.1),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Copy'),
                leading: Icon(Icons.copy_outlined),
                hoverColor: Colors.blue.withOpacity(0.1),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Thread'),
                leading: Icon(Icons.forum_outlined),
                hoverColor: Colors.blue.withOpacity(0.1),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
