import 'package:calendar_view/calendar_view.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

enum CalendarView {
  day,
  month,
  week;
}

class _CalendarState extends State<Calendar>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  CalendarView currentView = CalendarView.day;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget showCalendar() {
      switch (currentView) {
        case CalendarView.day:
          return const DayView();
        case CalendarView.month:
          return const MonthView();
        case CalendarView.week:
          return const WeekView();
      }
    }

    return Scaffold(
      body: showCalendar(),
      floatingActionButton: FloatingActionBubble(
        onPress: () => _animationController.isCompleted
            ? _animationController.reverse()
            : _animationController.forward(),
        items: <Bubble>[
          Bubble(
            title: "Month View",
            iconColor: Colors.white,
            bubbleColor: Colors.blue,
            icon: Icons.settings,
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              currentView = CalendarView.month;
              _animationController.reverse();
              setState(() => {});
            },
          ),
          Bubble(
            title: "Day View",
            iconColor: Colors.white,
            bubbleColor: Colors.blue,
            icon: Icons.people,
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              currentView = CalendarView.day;
              _animationController.reverse();
              setState(() => {});
            },
          ),
          Bubble(
            title: "Week View",
            iconColor: Colors.white,
            bubbleColor: Colors.blue,
            icon: Icons.home,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              currentView = CalendarView.week;
              _animationController.reverse();
              setState(() => {});
            },
          ),
        ],
        animation: _animation,
        backGroundColor: Colors.purple,
        iconColor: Colors.white,
        iconData: Icons.ac_unit,
      ),
    );
  }
}
