import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/colors.dart';

class MyMessageCart extends StatelessWidget {
  const MyMessageCart({super.key, required this.message, required this.date});
  final String message;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 45,
          ),
          child: Card(
            elevation: 1,
            color: messageColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.all(10),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 30, bottom: 20, top: 5),
                      child:
                          Text(message, style: const TextStyle(fontSize: 16)),
                    ),
                    Positioned(
                        bottom: 4,
                        right: 10,
                        child: Row(
                          children: [
                            Text(
                              date,
                              style: const TextStyle(
                                  fontSize: 13, color: Colors.white60),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.done_all,
                              color: Colors.white60,
                              size: 20,
                            ),
                          ],
                        ))
                  ],
                )),
          ),
        ));
  }
}