import 'package:blog_application/screens/auth_screen.dart';
import 'package:blog_application/widgets/icon_social_network.dart';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back',
          style: themeData.textTheme.headline4,
        ),
        const SizedBox(height: 8),
        Text(
          'Sign in with your account',
          style: themeData.textTheme.subtitle1!.apply(fontSizeFactor: 0.9),
        ),
        const SizedBox(height: 16),
        const TextField(
          decoration: InputDecoration(
            label: Text('Username'),
          ),
        ),
        const PasswordTextField(),
        const SizedBox(height: 24),
        ElevatedButton(
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width, 60),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              )),
          onPressed: () {},
          child: Text('Login'.toUpperCase()),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Forgot your password'),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () {},
              child: const Text('Rest here'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Center(
          child: Text(
            'Or Sign in with'.toUpperCase(),
            style: const TextStyle(letterSpacing: 2),
          ),
        ),
        const SizedBox(height: 16),
        const IconSocialNetwork(),
      ],
    );
  }
}
