import 'package:ecommerceapp/app/modules/bag/controllers/bag_controller.dart';
import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PlaceOrderButton extends StatelessWidget {
  PlaceOrderButton({Key? key}) : super(key: key);
  final bagController = Get.put(BagController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ElevatedButton(
          onPressed: () {
            bagController.makePayment();
          },
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
