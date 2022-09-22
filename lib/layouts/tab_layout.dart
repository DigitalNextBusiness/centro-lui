import 'package:flutter/material.dart';

class ClTabLayout extends StatelessWidget {
  const ClTabLayout({
    super.key,
    required this.tabs,
    this.actions,
    required this.tabsContent,
    required this.length,
    this.title,
  });

  final String? title;
  final List<Tab> tabs;
  final List<Widget>? actions;
  final int length;
  final List<Widget> tabsContent;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: length,
      child: Scaffold(
        appBar: AppBar(
          title: title != null ? Text(title!) : null,
          actions: actions,
          bottom: TabBar(
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: tabsContent,
        ),
      ),
    );
  }
}
