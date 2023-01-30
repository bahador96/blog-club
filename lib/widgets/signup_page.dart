import 'package:blog_application/screens/auth_screen.dart';
import 'package:blog_application/widgets/icon_social_network.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({
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
          'Welcome to blog club',
          style: themeData.textTheme.headlineMedium,
        ),
        const SizedBox(height: 8),
        Text(
          'Please enter your information',
          style: themeData.textTheme.titleMedium!.apply(fontSizeFactor: 0.9),
        ),
        const SizedBox(height: 16),
        const TextField(
          decoration: InputDecoration(
            label: Text('Full Name'),
          ),
        ),
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
            ),
          ),
          onPressed: () {},
          child: Text('Sign up'.toUpperCase()),
        ),
        const SizedBox(height: 16),
        Center(
          child: Text(
            'Or Sign Up with'.toUpperCase(),
            style: const TextStyle(letterSpacing: 2),
          ),
        ),
        const SizedBox(height: 16),
        const IconSocialNetwork(),
      ],
    );
  }
}
