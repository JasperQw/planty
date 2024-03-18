import 'package:flutter/material.dart';
import 'package:planty/components/community/chat_details/chat_box.dart';
import 'package:planty/components/community/chat_details/chat_date.dart';
import 'package:planty/components/community/chat_details/chat_details_appbar.dart';
import 'package:planty/components/community/chat_details/chat_input.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({super.key});

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: ChatDetailsAppBar(
          image:
              "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
          name: "kevin.eth",
          isOnline: true,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 100,
                  left: 0,
                  right: 0,
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        // vertical: 16,
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ChatDate(),
                          ChatBox(
                            isReply: true,
                            message: "Sam, are you ready? 🤣😂",
                            isLast: true,
                            time: "15:18 AM",
                          ),
                          ChatBox(
                            isReply: false,
                            message: "Actually yes, lemme see..",
                            isLast: false,
                            time: "15:18 AM",
                          ),
                          ChatBox(
                            isReply: false,
                            message: "Done, I just finished it!",
                            isLast: false,
                            time: "15:19 AM",
                          ),
                          ChatBox(
                            isReply: false,
                            message: "😋😋",
                            isLast: true,
                            time: "15:19 AM",
                          ),
                          ChatBox(
                            isReply: true,
                            message: "Nah, it’s crazy 😑",
                            isLast: false,
                            time: "15:20 AM",
                          ),
                          ChatBox(
                            isReply: true,
                            message: "Cheating?",
                            isLast: true,
                            time: "15:20 AM",
                          ),
                          ChatBox(
                            isReply: false,
                            message: "No way, lol",
                            isLast: false,
                            time: "15:20 AM",
                          ),
                          ChatBox(
                            isReply: false,
                            message: "I’m a pro, that’s why 😎",
                            isLast: true,
                            time: "15:20 AM",
                          ),
                          ChatBox(
                            isReply: true,
                            message: "Still, can’t believe 🤣",
                            isLast: true,
                            time: "15:21 AM",
                          ),
                          ChatBox(
                            isReply: false,
                            message: "Read about inflation news, now!!",
                            isLast: true,
                            time: "15:22 AM",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 20,
                  left: 32,
                  right: 32,
                  child: ChatInput(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
