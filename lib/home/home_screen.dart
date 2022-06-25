import 'package:chat_app_ui/dummy_data.dart';
import 'package:chat_app_ui/models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'components/add_story_card.dart';
import 'components/bottom_button.dart';
import 'components/message_card.dart';
import 'components/stories_title.dart';
import 'components/story_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Chats',
          style: TextStyle(
            fontSize: 34,
            color: Colors.green,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const StoriesTitle(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 190,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storiesList.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const AddStoryCard();
                  }

                  final story = storiesList[index - 1];
                  return StoryCard(story: story);
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final chat = chatList[index];

                return MessageCard(chat: chat);
              },
              childCount: chatList.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10),
          ],
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10),
          ),
        ),
        child: Row(
          children: const [
            Spacer(),
            BottomNavBarCustomIcon(
              iconUrl: 'assets/svg/send_symbol.svg',
              isActive: true,
              notifications: 5,
            ),
            Spacer(),
            BottomNavBarCustomIcon(
              iconUrl: 'assets/svg/call.svg',
              notifications: 0,
            ),
            Spacer(flex: 3),
            BottomNavBarCustomIcon(
              iconUrl: 'assets/svg/heart.svg',
              notifications: 0,
            ),
            Spacer(),
            BottomNavBarCustomIcon(
              iconUrl: 'assets/svg/person.svg',
              notifications: 0,
            ),
            Spacer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
