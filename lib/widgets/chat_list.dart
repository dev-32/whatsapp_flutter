import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/widgets/my_message_cart.dart';
import 'package:whatsapp_flutter/widgets/sender_messge_card.dart';

import '../info.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
        itemBuilder: (c,i){
        if(messages[i]['isMe'] == true){
          // My message Card
          return MyMessageCart(message: messages[i]['text'].toString(),
              date: messages[i]['time'].toString());
        }
        return SenderMessgeCard(message: messages[i]['text'].toString(), date: messages[i]['time'].toString());
        // Sender Message Card
    });

  }
}
