import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../models/chat_model.dart';

class MessageCard extends StatelessWidget {
  final ChatModel chat;

  const MessageCard({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(chat.userPhotoUrl),
        ),
        title: Text(chat.userName),
        subtitle: Text(
          chat.lastMessage,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: FittedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${DateFormat('hh:mm').format(chat.lastMessageTime)} ${checkMessageTime(chat.lastMessageTime)}',
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 5),
              messageStatus(chat.messageStatus),
            ],
          ),
        ),
      ),
    );
  }

  Widget messageStatus(MessageStatus messageStatus) {
    if (messageStatus == MessageStatus.sending) {
      return SvgPicture.asset(
        'assets/svg/check.svg',
        height: 12,
        width: 12,
        color: Colors.grey,
      );
    } else if (messageStatus == MessageStatus.sent) {
      return Row(
        children: [
          SvgPicture.asset(
            'assets/svg/check.svg',
            height: 12,
            width: 12,
            color: Colors.grey,
          ),
          SvgPicture.asset(
            'assets/svg/check.svg',
            height: 12,
            width: 12,
            color: Colors.grey,
          ),
        ],
      );
    } else {
      return Row(
        children: [
          SvgPicture.asset(
            'assets/svg/check.svg',
            height: 12,
            width: 12,
            color: Colors.green,
          ),
          SvgPicture.asset(
            'assets/svg/check.svg',
            height: 12,
            width: 12,
            color: Colors.green,
          ),
        ],
      );
    }
  }

  String checkMessageTime(DateTime messageTime) {
    if (messageTime.hour >= 12) {
      return 'PM';
    } else {
      return 'AM';
    }
  }
}
