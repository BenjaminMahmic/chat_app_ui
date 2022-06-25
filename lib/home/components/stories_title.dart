import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StoriesTitle extends StatelessWidget {
  const StoriesTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            const Text(
              'Stories',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            SvgPicture.asset(
              'assets/svg/time_forward.svg',
              height: 15,
              width: 15,
              color: Colors.grey,
            ),
            const SizedBox(width: 15),
            const Text(
              'All stories',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
