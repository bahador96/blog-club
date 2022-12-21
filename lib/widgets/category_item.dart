import 'package:blog_application/data.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final double left;
  final double right;

  const CategoryItem({
    Key? key,
    required this.category,
    required this.left,
    required this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      margin: EdgeInsets.fromLTRB(left, 0, right, 0),
      child: Stack(
        children: [
          Positioned.fill(
            top: 100,
            right: 65,
            left: 65,
            bottom: 24,
            child: Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Color(0xaa0D253C),
                )
              ]),
            ),
          ),
          Positioned.fill(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.red,
              ),
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Color(0xff0D253C),
                    Colors.transparent,
                  ],
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(
                  'assets/img/posts/large/${category.imageFileName}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 48,
            left: 32,
            child: Text(
              category.title,
              style: themeData.textTheme.headline6!.apply(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
