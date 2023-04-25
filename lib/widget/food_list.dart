import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FoodList extends StatelessWidget {
  final String ownerProfile;
  final String ownerName;
  final String image;
  final String title;
  final String? receipt;
  const FoodList({
    Key? key,
    required this.ownerProfile,
    required this.ownerName,
    required this.image,
    required this.title,
    required this.receipt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  padding: EdgeInsets.only(right: 10),
                  child: 
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(ownerProfile),
                  )),
              InkWell(
                child: Text(
                  ownerName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image(
                image: NetworkImage(image),
                fit: BoxFit.cover, // ทำให้ไม่มีขอบรูปที่เกิน ให้รูปขยายเต็มขอบ
                width: 400,
                height: 200,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: InkWell(
              child: Text(title,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              onTap: () => {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '$title Receipt',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 16.0),
                                Text(
                                  '$receipt',
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              },
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
