import 'package:appbase/constants.dart';
import 'package:appbase/icons/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int pageIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            pageIdx = idx;
          });
        },
        fixedColor: Colors.green,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        currentIndex: pageIdx,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang Chủ',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.ticket_solid),
            label: 'Đặt vé',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.user_secret_solid),
            label: 'Airlines Club',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      body: pages[pageIdx],
    );
  }
}
