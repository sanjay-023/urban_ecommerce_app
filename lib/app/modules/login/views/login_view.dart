import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/login/views/widget/g_login_button.dart';
import 'package:ecommerceapp/app/modules/login/views/widget/login_button.dart';
import 'package:ecommerceapp/app/modules/login/views/widget/login_text_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors().bgColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60.h,
            ),
            LoginTextBox(hText: "Username"),
            LoginTextBox(
              hText: "Password",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            SizedBox(
              height: 26.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginButton(),
              ],
            ),
            SizedBox(
              height: 70.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Or login using",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GLoginButton(iconUrl: "asset/image/googleLogo.png"),
                GLoginButton(
                  iconUrl: "asset/image/facebooklogo.png",
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
