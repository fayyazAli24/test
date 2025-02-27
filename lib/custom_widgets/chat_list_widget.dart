import 'package:flutter/material.dart';

import '../custom_widgets/badge.dart';
import '../resources/chat_previews.dart';
import '../resources/colors.dart';
import 'chat_preview_widget.dart';

class ChatListWidget extends StatelessWidget {
  ChatListWidget({
    Key? key,
  }) : super(key: key);

  final selectedIndex = 1;
  final ScrollController chatListController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Messages",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CustomBadge(
                caption: "28",
                color: primaryParticipantColor,
                fontSize: 10,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              controller: chatListController,
              itemCount: chatPreviews.length,
              itemBuilder: (context, index) => ChatPreviewWidget(
                    chat: chatPreviews[index],
                    isSelected: selectedIndex == index,
                  )),
        )
      ],
    );
  }
}
