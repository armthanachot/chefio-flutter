import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //to use FilteringTextInputFormatter and LengthLimitingTextInputFormatter

class OtpInputField extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final FocusNode focusNode;
  // final FocusNode nextFocusNode;
  const OtpInputField({
    Key? key,
    this.hintText,
    required this.onChanged,
    required this.controller,
    required this.focusNode,
    // required this.nextFocusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10),
        width: 50,
        height: 50,
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          textAlign: TextAlign.center,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(1)
          ],
          onChanged: onChanged,
          decoration: InputDecoration(
            // hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                color: Colors.grey[400]!,
                width: 2.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                color: Colors.grey[400]!,
                width: 2.0,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
          ),
        ));
  }
}
