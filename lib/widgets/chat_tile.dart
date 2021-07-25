import 'package:flutter/material.dart';
import 'package:chatty_ui/theme.dart';
class ChatTile extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final String? text;
  final String? time;
  final bool? unread;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl!,
          width: 55,
          height: 55,
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name!,
              style: titleTextStyle,
            ),
            Text(text!,
                style: unread! ?
                subTitleTextStyle.copyWith(color: blackColor) : subTitleTextStyle)
          ],
        ),
        Spacer(),
        Text(time!, style: subTitleTextStyle,)
      ],
    );
  }
}
