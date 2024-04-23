import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/colors.dart';
import 'package:whatsapp_flutter/widgets/chat_list.dart';

import '../info.dart';


class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              info[4]['profilePic'].toString(),
            ),
            radius: 10,
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.videocam)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          // Chat List
          const Expanded(child: ChatList()),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message',
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                contentPadding: const EdgeInsets.all(10),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.attach_file)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt)),
                  ],
                ),
                filled: true,
                fillColor: searchBarColor,
              ),
            ),
          ),
        ],
      )
    );
  }
}
