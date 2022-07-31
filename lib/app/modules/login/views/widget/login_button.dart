import 'package:ecommerceapp/app/modules/bottombar/views/bottombar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.off(BottombarView());
        },
        child: Text("Log in"),
        style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 183, 12, 69),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.r)),
            minimumSize: const Size(343, 48)));
  }
}
