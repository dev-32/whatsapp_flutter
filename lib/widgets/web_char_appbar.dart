import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/colors.dart';

import '../info.dart';

class WebCharAppbar extends StatelessWidget {
  const WebCharAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.088,
        width: MediaQuery.of(context).size.width * 0.75,
        padding: const EdgeInsets.all(10),
        color: webAppBarColor,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 27,
                  backgroundImage:
                      NetworkImage('https://randomuser.me/api/portraits'),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                Text(info[0]['name'].toString(), style: const TextStyle(
                  fontSize: 18
                ),)
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.videocam),
                  onPressed: () {},
                  color: Colors.white,
                ),
                IconButton(
                  icon: const Icon(Icons.call),
                  onPressed: () {},
                  color: Colors.white,
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ],
            )
          ],
        ));
  }
}
