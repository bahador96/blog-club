import 'package:blog_application/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class IconSocialNetwork extends StatelessWidget {
  const IconSocialNetwork({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.img.icons.google.image(
          width: 36,
          height: 36,
        ),
        const SizedBox(width: 24),
        Assets.img.icons.facebook.image(
          width: 36,
          height: 36,
        ),
        const SizedBox(width: 24),
        Assets.img.icons.twitter.image(
          width: 36,
          height: 36,
        ),
      ],
    );
  }
}
