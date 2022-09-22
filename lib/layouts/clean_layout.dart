import 'package:flutter/material.dart';

class ClCleanLayout extends StatelessWidget {
  const ClCleanLayout(
      {super.key,
      required this.title,
      required this.body,
      this.actions,
      this.floatingActionButton});

  final String title;
  final Widget body;
  final List<Widget>? actions;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: actions,
      ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
