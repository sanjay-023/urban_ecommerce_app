import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check, color: Colors.white),
              SizedBox(
                width: 5.w,
              ),
              Text("PLACE ORDER")
            ],
          ),
          style: ElevatedButton.styleFrom(
              primary: CommonColors().buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)),
              minimumSize: Size(200.w, 50.h))),
    );
  }
}
