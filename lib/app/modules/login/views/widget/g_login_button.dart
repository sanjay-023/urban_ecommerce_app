import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GLoginButton extends StatelessWidget {
  final String iconUrl;
  GLoginButton({Key? key, required this.iconUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        child: Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
          child: Container(
            height: 20.h,
            width: 20.w,
            child: Image(
              image: AssetImage(iconUrl),
            ),
          ),
        ),
      ),
    );
  }
}
