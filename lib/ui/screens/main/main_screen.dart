import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/ui/screens/home/home_screen.dart';
import 'package:linkedin/ui/screens/chat/chat_screen.dart';
import 'package:linkedin/ui/screens/saved/saved_screen.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'package:linkedin/ui/custom_widgets/custom_bottom_sheet.dart';
import 'package:linkedin/ui/screens/connection/connection_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.connect_without_contact_outlined,
    Icons.add_circle_rounded,
    Icons.chat_bubble_outline,
    Icons.bookmark_outline,
  ];
  static const List<String> _title = [
    "home",
    "connection",
    "add",
    "chat",
    "saved",
  ];
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ConnectionScreen(),
    Text("data"),
    ChatScreen(),
    SavedScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 2) {
      Get.bottomSheet(
        const CustomBottomSheet(
          primaryButtonText: 'post',
          secondaryButtonText: 'make a job',
          smallTitle: 'What would you like to add?',
          description:
              'Would you like to post your tips and experiences or create a job?',
        ),
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        backgroundColor: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: _icons.asMap().entries.map((entry) {
            int index = entry.key;
            IconData element = entry.value;
            return BottomNavigationBarItem(
              icon: Icon(
                element,
                size: 24,
              ),
              label: _title[index],
            );
          }).toList(),
          currentIndex: _selectedIndex,
          selectedItemColor: iconSelected,
          unselectedItemColor: iconDefault,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
