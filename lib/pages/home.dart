import 'package:checfio_flutter/mock/food_list_mock.dart';
import 'package:checfio_flutter/widget/food_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var foods = FoodMock().foods;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
              itemCount: FoodMock().foods.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    FoodList(
                        ownerProfile: foods[index]["ownerProfile"],
                        ownerName: foods[index]["ownerName"],
                        image: foods[index]["image"],
                        title: foods[index]["title"],
                        receipt: foods[index]["receipt"],
                        )
                  ],
                );
              })),
    );
  }
}
