import 'package:blog_application/data.dart';
import 'package:blog_application/gen/assets.gen.dart';
import 'package:blog_application/widgets/category_list.dart';
import 'package:blog_application/widgets/post_list.dart';
import 'package:blog_application/widgets/story_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final stories = AppDatabase.stories;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(32, 16, 32, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi, Jonathan!',
                      style: themeData.textTheme.titleMedium,
                    ),
                    Assets.img.icons.notification.image(width: 32, height: 32),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 0, 16),
                child: Text(
                  'Explore today’s',
                  style: themeData.textTheme.headlineMedium,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: StoryList(stories: stories),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(top: 16),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                child: CategoryList(),
              ),
            ),
            const SliverToBoxAdapter(
              child: PostList(),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(bottom: 32),
            ),
          ],
        ),
      ),
    );
  }
}
