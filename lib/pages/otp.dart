import 'package:checfio_flutter/pages/home.dart';
import 'package:checfio_flutter/pages/otp_input.dart';
import 'package:checfio_flutter/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  String _num1 = '', _num2 = '', _num3 = '', _num4 = '';

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();
  @override
  void initState() {
    super.initState();
    _focusNode1.addListener(() {
      if (_focusNode1.hasFocus && _controller1.text.isNotEmpty) {
        _focusNode2.requestFocus();
      }
    });
    _focusNode2.addListener(() {
      if (_focusNode2.hasFocus && _controller2.text.isNotEmpty) {
        _focusNode3.requestFocus();
      }
    });
    _focusNode3.addListener(() {
      if (_focusNode3.hasFocus && _controller3.text.isNotEmpty) {
        _focusNode4.requestFocus();
      }
    });
  } // ต้องการให้เมื่อกรอกช่องแรกแล้วจะต้อง autofocus ช่องต่อๆไป ให้ โดยการใช้ FocusNode หลักการคือ ตอนสร้าง widget นี้ ใน initState จะ add listener ให้กับ focusNode แต่ละ node

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Chefio"),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Check your email"),
            const Text("We sent the code to your email"),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OtpInputField(
                    onChanged: (value) {
                      setState(() {
                        _num1 = value;
                      });
                      FocusScope.of(context).requestFocus(
                          _focusNode2); // เป็นการบอกว่า ต่อไปให้ focus ที่ node ไหน โดยดูจาก focusNode ที่ผูกไว้ในแต่ละตัว
                    },
                    controller: _controller1,
                    focusNode: _focusNode1),
                OtpInputField(
                    onChanged: (value) {
                      setState(() {
                        _num2 = value;
                      });
                      FocusScope.of(context).requestFocus(
                          _focusNode3); // เป็นการบอกว่า ต่อไปให้ focus ที่ node ไหน โดยดูจาก focusNode ที่ผูกไว้ในแต่ละตัว
                    },
                    controller: _controller2,
                    focusNode: _focusNode2),
                OtpInputField(
                    onChanged: (value) {
                      setState(() {
                        _num3 = value;
                      });
                      FocusScope.of(context).requestFocus(
                          _focusNode4); // เป็นการบอกว่า ต่อไปให้ focus ที่ node ไหน โดยดูจาก focusNode ที่ผูกไว้ในแต่ละตัว
                    },
                    controller: _controller3,
                    focusNode: _focusNode3),
                OtpInputField(
                    onChanged: (value) {
                      setState(() {
                        _num4 = value;
                      });
                    },
                    controller: _controller4,
                    focusNode: _focusNode4),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => checkOtp(),
              child: const Text(
                'Submit',
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(400, 50)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // set your desired radius here
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  checkOtp() async {
    // if num_1 != ..., _num2 != ...
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Invalid otp'),
          content: Text('Please recheck your otp.',
              style: TextStyle(color: Colors.grey[500])),
          actions: [
            TextButton(
              child: Text(
                'OK',
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    correctOtp();
  }

  correctOtp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
