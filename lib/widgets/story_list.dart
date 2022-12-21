import 'package:blog_application/data.dart';
import 'package:blog_application/widgets/story.dart';
import 'package:flutter/material.dart';

class StoryList extends StatelessWidget {
  const StoryList({
    Key? key,
    required this.stories,
  }) : super(key: key);

  final List<StoryData> stories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView.builder(
        itemCount: stories.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        itemBuilder: (context, index) {
          final story = stories[index];
          return Story(story: story);
        },
      ),
    );
  }
}
