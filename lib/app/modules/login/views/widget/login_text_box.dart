import 'package:flutter/material.dart';

class LoginTextBox extends StatelessWidget {
  final String hText;
  LoginTextBox({Key? key, required this.hText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextField(
        decoration: InputDecoration(
            // filled: true,
            // fillColor: Color.fromARGB(255, 3, 3, 12),
            hintText: hText,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 183, 12, 69))),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 183, 12, 69))),
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 183, 12, 69)))),
      ),
    );
  }
}
