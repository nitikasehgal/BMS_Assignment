import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
        ),
        Row(
          children: const [
            Icon(
              Icons.notifications_active,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.language,
              size: 30,
            )
          ],
        ),
      ]),
    );
  }
}
