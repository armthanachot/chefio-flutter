import 'package:checfio_flutter/pages/home.dart';
import 'package:checfio_flutter/pages/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomBar extends StatefulWidget {
  final List<BottomNavigationBarItem> menus;
  const BottomBar({Key? key, required this.menus}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  void _showMenu(BuildContext context) async {
    final result = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(0, 50, 0, 0),
      items: <PopupMenuEntry>[
        PopupMenuItem<String>(
          value: 'item1',
          child: Text('Item 1'),
        ),
        PopupMenuItem<String>(
          value: 'item2',
          child: Text('Item 2'),
        ),
        PopupMenuItem<String>(
          value: 'item3',
          child: Text('Item 3'),
        ),
      ],
    );

    if (result != null) {
      // Handle menu item selection here
    }
  }

  List<Widget> _pages = [
    HomePage(),
    NotificationPage(),
    NotificationPage(),
    NotificationPage()
  ];
  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  } // ถ้า initState ไปไว้ใต้ build จะทำให้มัน init ใหม่ตลอด ก็จะไม่ active ที่อื่น

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) async {
      if (index != 0 && index != 4) {
        await showBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 400,
                child: Container(
                    color: Colors.green,
                    child: Center(
                      child: ElevatedButton(
                        child: const Text("close"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )),
              );
            });
        // await Navigator.push(
        //   //ต้องการให้รอหน้านี้ก่อน
        //   context,
        //   MaterialPageRoute(builder: (context) => _pages[index]),
        // );
        setState(() {
          // เมื่อกดปิดแล้วค่อย set state เป็น 0 ทำให้มัน rebuild และ active ที่ index 0
          _selectedIndex = 0;
        });
      } else if (_selectedIndex == 4) {
        _showMenu(context);
        _selectedIndex = index;
      } else {
        setState(() {
          _selectedIndex = index;
        });
      }
    }

    return BottomNavigationBar(
      items: widget.menus,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green,
      onTap: _onItemTapped,
    );
  }
}
