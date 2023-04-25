import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Search extends StatefulWidget {
  final List<Map<String, dynamic>> data; //access data in build() by widget ex. widget.data
  final String searchBy;
  const Search({Key? key, required this.data, required this.searchBy}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<Map<String, dynamic>> filteredDataList = [];
  String searchValue = "";
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
      ),
      cursorWidth:
          5.0, // ทำให้ cursor มี padding ไม่งั้นมันจะติดขอบ แล้วก็เวลาที่ box มัน radius มันจะไม่สวย
      cursorRadius: Radius.circular(8), // จะเห็นชัดตอนที่ cursor หนาๆ
      style: TextStyle(fontSize: 20),
      onChanged: (value) {
        setState(() {
          print(widget.data);
          searchValue = value;
          filter(searchValue);
        });
      },
    );
  }

  filter(value) {}
}
