import 'package:flutter/material.dart';

import '../../models/story_model.dart';

class StoryCard extends StatelessWidget {
  final StoryModel story;

  const StoryCard({
    Key? key,
    required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 120,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(story.storyPhotoUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                  bottom: Radius.circular(25),
                ),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 7),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Text(story.userName),
            Text(story.userSurname),
          ],
        ),
        Positioned(
          top: 100,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(story.userPhotoUrl),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3),
            ),
          ),
        ),
      ],
    );
  }
}
