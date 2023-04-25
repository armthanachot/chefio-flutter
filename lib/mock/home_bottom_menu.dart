import 'package:flutter/material.dart';

class HomeBottomMenu {
  List<BottomNavigationBarItem> menus = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.grey, size: 30),
      activeIcon: Icon(
        Icons.home,
        color: Colors.green,
        size: 30,
      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.upload, color: Colors.grey, size: 30),
      activeIcon: Icon(
        Icons.upload,
        color: Colors.green,
        size: 30,
      ),
      label: 'Upload',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.notifications, color: Colors.grey, size: 30),
      activeIcon: Icon(
        Icons.notifications,
        color: Colors.green,
        size: 30,
      ),
      label: 'Notifications',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person, color: Colors.grey, size: 30),
      activeIcon: Icon(
        Icons.person,
        color: Colors.green,
        size: 30,
      ),
      label: 'Profile',
    ),
  ];
}
