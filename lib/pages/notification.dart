import 'package:checfio_flutter/pages/home.dart';
import 'package:checfio_flutter/widget/appbar.dart';
import 'package:checfio_flutter/mock/noti_mock.dart' as noti;
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<Map<String, dynamic>> todayNoti = [{}];
  List<Map<String, dynamic>> anotherNoti = [{}];
  bool readTodayAll = false;
  bool readAnotherAll = false;
  @override
  void initState() {
    todayNoti = noti.notificationsMock
        .sublist(0, 5); //เลือก จาก index ที่ 0 ถึงตำแหน่งที่ 5 (เริ่มนับจาก 1)
    readTodayAll = todayNoti.every((element) => element["read"] == true);
    anotherNoti =
        noti.notificationsMock.sublist(5, noti.notificationsMock.length);
    readAnotherAll = anotherNoti.every((element) => element["read"] == true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Notification"),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: readTodayAll ? Colors.green : Colors.red),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: todayNoti.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          color: todayNoti[index]["read"]
                              ? Colors.white
                              : Colors.grey.shade300,
                          child: ListTile(
                            title: Text(todayNoti[index]["read"]
                                ? todayNoti[index]["from"]
                                : "${todayNoti[index]["from"]} (unread)"),
                            subtitle: InkWell(
                              child: Text(
                                todayNoti[index]["content"],
                                overflow: !todayNoti[index]["showFull"]
                                    ? TextOverflow.ellipsis
                                    : null,
                                maxLines:
                                    !todayNoti[index]["showFull"] ? 3 : null,
                              ),
                              onTap: () {
                                setState(() {
                                  todayNoti[index]["showFull"] =
                                      !todayNoti[index]["showFull"];
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  todayNoti[index]["read"] =
                                      !todayNoti[index]["read"];
                                  readTodayAll = todayNoti.every(
                                      (element) => element["read"] == true); // เนื่องจาก set ค่าไว้ที่ init state แต่ถ้าไม่ทำตรงนี้ ค่าของ read จะไม่ถูกเปลี่ยนและไม่ถูกอ่านใหม่ ทำให้ Today ไม่เปลี่ยนสี ต้อง setState ให้ rebuild ด้วย
                                  readAnotherAll = anotherNoti.every(
                                      (element) => element["read"] == true); // เนื่องจาก set ค่าไว้ที่ init state แต่ถ้าไม่ทำตรงนี้ ค่าของ read จะไม่ถูกเปลี่ยนและไม่ถูกอ่านใหม่ ทำให้ Today ไม่เปลี่ยนสี ต้อง setState ให้ rebuild ด้วย
                                });
                              },
                            ),
                          ));
                    }),
                // Add more widgets here if needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
