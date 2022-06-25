import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBarCustomIcon extends StatelessWidget {
  final String iconUrl;
  final bool isActive;
  final int notifications;

  const BottomNavBarCustomIcon({
    Key? key,
    required this.iconUrl,
    this.isActive = false,
    required this.notifications,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          iconUrl,
          height: 25,
          width: 25,
          color: isActive ? Colors.green : Colors.grey,
        ),
        if (notifications > 0)
          Positioned(
            right: -8,
            top: -5,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 10,
              child: Text(
                notifications.toString(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
