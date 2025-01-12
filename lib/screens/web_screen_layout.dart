import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/colors.dart';
import 'package:whatsapp_flutter/widgets/chat_list.dart';
import 'package:whatsapp_flutter/widgets/contacts_list.dart';
import 'package:whatsapp_flutter/widgets/web_search_bar.dart';
import '../widgets/web_char_appbar.dart';
import '../widgets/web_profile_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         const  Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                   WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage('assets/backgroundImage.png'),
              fit: BoxFit.cover),
            ),
            child: Column(
              // Chat APP BAR
             children: [
               WebCharAppbar(),
               Expanded(child: ChatList()),

               Container(
                 height: MediaQuery.of(context).size.height*0.07,
                 padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   border: Border(
                     bottom: BorderSide(
                       color: dividerColor,
                     ),
                   ),
                   color: chatBarMessage,
                 ),
                 child: Row(
                   children: [
                     IconButton(
                       icon: const Icon(Icons.emoji_emotions_outlined),
                       onPressed: () {},
                       color: Colors.grey,
                     ),
                     IconButton(
                       icon: const Icon(Icons.attach_file),
                       onPressed: () {},
                       color: Colors.grey,
                     ),
                     IconButton(
                       icon: const Icon(Icons.camera_alt),
                       onPressed: () {},
                       color: Colors.grey,
                     ),
                     Expanded(
                       child: Padding(
                         padding:  const EdgeInsets.only(
                           left: 10,
                           right: 15,
                         ),
                         child: TextField(
                           decoration:  InputDecoration(
                             fillColor: searchBarColor,
                             filled: true,
                             hintText: 'Type a message',
                             border:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                )
                             ),
                             contentPadding: const EdgeInsets.only(left: 20),
                           ),
                         ),
                       ),
                     ),

                     IconButton(
                       icon: const Icon(Icons.keyboard_voice),
                       onPressed: () {},
                       color: Colors.white,
                     ),
                   ],
                 ),
               )
             ],
              // Chat list
              //Messgae Input Box
            ),
          )
        ],
      ),
    );
  }
}
