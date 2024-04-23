import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/colors.dart';
import 'package:whatsapp_flutter/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: const Text('Whatsapp',
            style: TextStyle(
              color: Colors.grey,
              fontSize : 20,
              fontWeight: FontWeight.bold,
            ),),
            centerTitle: false,
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.grey,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.grey,)),
            ],
            bottom: const TabBar(
              dividerHeight: 0,
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor:Colors.grey,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Tab(text: 'CHATS'),
                Tab(text: 'STATUS'),
                Tab(text: 'CALLS'),
              ],
            ),
          ),
          body: const ContactsList(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: tabColor,
            child: const Icon(Icons.message,color: Colors.white,),
          ),
        ));
  }
}
