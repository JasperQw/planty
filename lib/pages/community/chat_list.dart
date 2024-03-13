import 'package:flutter/material.dart';
import 'package:planty/components/common/general_appbar.dart';
import 'package:planty/components/community/chat_list/chat_preview.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: GeneralAppBar(
          title: "Message",
          withBackBtn: true,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                ),
                child: const Column(
                  children: [
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 2,
                      time: "14:28",
                      isOnline: true,
                    ),
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 0,
                      time: "14:28",
                      isOnline: false,
                    ),
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 2,
                      time: "14:28",
                      isOnline: true,
                    ),
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 2,
                      time: "14:28",
                      isOnline: true,
                    ),
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 2,
                      time: "14:28",
                      isOnline: true,
                    ),
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 2,
                      time: "14:28",
                      isOnline: true,
                    ),
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 2,
                      time: "14:28",
                      isOnline: true,
                    ),
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 2,
                      time: "14:28",
                      isOnline: true,
                    ),
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 2,
                      time: "14:28",
                      isOnline: true,
                    ),
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 2,
                      time: "14:28",
                      isOnline: true,
                    ),
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 2,
                      time: "14:28",
                      isOnline: true,
                    ),
                    ChatPreview(
                      image:
                          "https://media.istockphoto.com/id/1415234405/photo/closeup-photo-of-young-funny-grimace-girl-touching-head-forgot-turn-off-computer-home.jpg?s=612x612&w=0&k=20&c=X7aIC4T5aJlVzhcjPFh19MHI3S8mwqbu123Yn1Rk1iE=",
                      name: "kevin.eth",
                      message: "kevin.eth is typing...",
                      unread: 2,
                      time: "14:28",
                      isOnline: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
