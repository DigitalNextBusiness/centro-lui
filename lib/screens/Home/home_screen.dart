import 'package:centrolui/costants/constants.dart';
import 'package:centrolui/layouts/tab_layout.dart';
import 'package:centrolui/router/cl_routing_path.dart';
import 'package:centrolui/screens/Home/calendar.dart';
import 'package:centrolui/screens/Home/last_reservation.dart';
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
            onPressed: () => context.push(RoutingPath.profile),
            icon: const Icon(Icons.person)),
        IconButton(
            onPressed: () => context.push(RoutingPath.settings),
            icon: const Icon(Icons.settings)),
      ],
      length: 2,
      tabs: const [
        Tab(
          icon: Icon(Icons.calendar_month),
          // child: Text("Calendario"),
        ),
        Tab(
          icon: Icon(Icons.list),
          // child: Text("Prenotazioni"),
        ),
        // Tab(icon: Icon(Icons.directions_bike)),
      ],
      tabsContent: const [
        Calendar(),
        LastReservetion(),
      ],
    );
  }
}
