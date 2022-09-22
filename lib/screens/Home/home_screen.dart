import 'package:centrolui/costants/constants.dart';
import 'package:centrolui/layouts/tab_layout.dart';
import 'package:centrolui/router/cl_routing_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String title = APP_NAME;

  @override
  Widget build(BuildContext context) {
    return ClTabLayout(
      title: "Centro Lui",
      actions: [
        IconButton(
            onPressed: () => context.push(RoutingPath.settings),
            icon: const Icon(Icons.settings))
      ],
      tabs: const [
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.directions_transit)),
        Tab(icon: Icon(Icons.directions_bike)),
      ],
      tabsContent: const [
        Icon(Icons.directions_car),
        Icon(Icons.directions_transit),
        Icon(Icons.directions_bike),
      ],
    );
  }
}
