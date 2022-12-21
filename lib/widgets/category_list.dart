import 'package:blog_application/carousel/carousel_slider.dart';
import 'package:blog_application/data.dart';
import 'package:blog_application/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = AppDatabase.categories;
    return CarouselSlider.builder(
      itemCount: categories.length,
      itemBuilder: (context, index, realIndex) {
        return CategoryItem(
          left: realIndex == 0 ? 32 : 8,
          right: realIndex == categories.length - 1 ? 32 : 8,
          category: categories[realIndex],
        );
      },
      options: CarouselOptions(
        scrollDirection: Axis.horizontal,
        viewportFraction: 0.8,
        aspectRatio: 1.5,
        initialPage: 0,
        autoPlay: true,
        autoPlayCurve: Curves.decelerate,
        disableCenter: true,
        enableInfiniteScroll: false,
        scrollPhysics: const BouncingScrollPhysics(),
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
    );
  }
}
