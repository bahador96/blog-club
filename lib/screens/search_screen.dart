import 'package:flutter/material.dart';

class SimpleScreen extends StatelessWidget {
  const SimpleScreen({
    super.key,
    required this.tabName,
    this.screenNumber = 1,
  });
  final String tabName;
  final int screenNumber;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tab: $tabName, Screen #$screenNumber',
                style: Theme.of(context).textTheme.headline4,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SimpleScreen(
                          tabName: tabName,
                          screenNumber: screenNumber + 1,
                        );
                      },
                    ),
                  );
                },
                child: const Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
