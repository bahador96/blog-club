import 'package:blog_application/data.dart';
import 'package:blog_application/gen/assets.gen.dart';
import 'package:blog_application/widgets/post_list.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final posts = AppDatabase.posts;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              elevation: 0,
              backgroundColor: themeData.colorScheme.background.withOpacity(0),
              title: const Text('Profile'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz_rounded),
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(32, 0, 32, 64),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: themeData.colorScheme.surface,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                color: themeData.colorScheme.onBackground
                                    .withOpacity(0.1),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Assets.img.stories.story8.image(
                                      width: 84,
                                      height: 84,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('joviedan'),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'Jovi Daniel',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 16,
                                              ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'UX Designer',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .apply(
                                                color: themeData
                                                    .colorScheme.primary,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                              child: Text(
                                'About me',
                                style: themeData.textTheme.titleLarge,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 4, 32, 40),
                              child: Text(
                                'Madison Blackstone is a director of user experience design, with experience managing global teams.',
                                style: themeData.textTheme.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 32,
                        left: 96,
                        right: 96,
                        child: Container(
                          height: 32,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              color: themeData.colorScheme.onBackground
                                  .withOpacity(0.8),
                            )
                          ]),
                        ),
                      ),
                      Positioned(
                        bottom: 32,
                        left: 64,
                        right: 64,
                        child: Container(
                          height: 68,
                          decoration: BoxDecoration(
                            color: themeData.colorScheme.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color(0xff2151CD),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '52',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: themeData
                                                .colorScheme.onPrimary),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Post',
                                        style: themeData.textTheme.bodyLarge!
                                            .copyWith(
                                          fontWeight: FontWeight.w200,
                                          color:
                                              themeData.colorScheme.onPrimary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '250',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              themeData.colorScheme.onPrimary),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Following',
                                      style: themeData.textTheme.bodyLarge!
                                          .copyWith(
                                        fontWeight: FontWeight.w200,
                                        color: themeData.colorScheme.onPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4.5K',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              themeData.colorScheme.onPrimary),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Folowers',
                                      style: themeData.textTheme.bodyLarge!
                                          .copyWith(
                                        fontWeight: FontWeight.w200,
                                        color: themeData.colorScheme.onPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: themeData.colorScheme.surface,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'My Posts',
                                  style: themeData.textTheme.titleLarge,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Assets.img.icons.grid.svg(),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Assets.img.icons.table.svg(),
                              ),
                            ],
                          ),
                        ),
                        for (var i = 0; i < posts.length; i++)
                          Post(psot: posts[i])
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
