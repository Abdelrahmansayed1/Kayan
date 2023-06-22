import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10,
      elevation: 10,
      shape: const CircularNotchedRectangle(),
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list_alt_outlined,
                ),
                label: "To Do"),
            BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart_outline), label: "Dashboards"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dashboard_outlined,
                ),
                label: "More"),
          ]),
    );
  }
}
