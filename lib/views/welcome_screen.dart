import 'package:flutter/material.dart';
import 'package:gigm_app/views/posts_list.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 2000),
      () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PostListScreen())),
    );

    return const Scaffold(
      body: Center(
        child: Text(
          "Hello GIGX",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
