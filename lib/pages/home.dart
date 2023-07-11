import 'package:checfio_flutter/mock/food_list_mock.dart';
import 'package:checfio_flutter/mock/home_bottom_menu.dart';
import 'package:checfio_flutter/widget/bottombar.dart';
import 'package:checfio_flutter/widget/food_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var foods = FoodMock().foods;
  List<Map<String, dynamic>> filteredFoodList = FoodMock().foods;
  @override
  void initState() {
    filteredFoodList =
        foods; // Initialize the filteredFoodList list to contain all items initial ก่อน เพราะ ListView จะเอาไปใช้ อาจจะเกิดการ render ไม่ทัน
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
          ),
          cursorWidth:
              5.0, // ทำให้ cursor มี padding ไม่งั้นมันจะติดขอบ แล้วก็เวลาที่ box มัน radius มันจะไม่สวย
          cursorRadius: Radius.circular(8), // จะเห็นชัดตอนที่ cursor หนาๆ
          style: TextStyle(fontSize: 20),
          onChanged: (value) {
            setState(() {
              filterFoods(value);
            });
          },
        ),
      )),
      body: Container(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
              itemCount: filteredFoodList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    FoodList(
                      ownerProfile: filteredFoodList[index]["ownerProfile"],
                      ownerName: filteredFoodList[index]["ownerName"],
                      image: filteredFoodList[index]["image"],
                      title: filteredFoodList[index]["title"],
                      receipt: filteredFoodList[index]["receipt"],
                    )
                  ],
                );
              })),
      bottomNavigationBar: BottomBar(menus: HomeBottomMenu().menus),
    );
  }

  void filterFoods(String searchTerm) {
    if (searchTerm.isEmpty) {
      filteredFoodList = foods;
    } else {
      filteredFoodList = foods
          .where((title) =>
              title["title"].toLowerCase().contains(searchTerm.toLowerCase()))
          .toList();
    }
  }
}
