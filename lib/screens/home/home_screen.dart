import 'package:flutter/material.dart';
import 'package:home_project/constants/path_strings.dart';
import 'package:home_project/constants/word_strings.dart';
import 'package:home_project/views/analyze/analyze_view.dart';
import 'package:home_project/views/calendar/calendar_view.dart';
import 'package:home_project/views/top/top_view.dart';
import 'package:home_project/extensions/base_extension.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> views = [
    TopView(),
    CalendarView(),
    AnalyzeView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(views[_currentIndex].runtimeType.toString()),
        actions: [
          IconButton(
            icon: Icon(Icons.search_off_rounded),
            onPressed: () => onTransition(PathStrings.tutorial, context),
          )
        ],
      ),
      body: views[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: WordStrings.bn_top_view_title,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: WordStrings.bn_calendar_view_title,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: WordStrings.bn_analyze_view_title,
          ),
        ],
        currentIndex: _currentIndex,
        onTap: onSwitchView,
      ),
    );
  }

  void onSwitchView(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
