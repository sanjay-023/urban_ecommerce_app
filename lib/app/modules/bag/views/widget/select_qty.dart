import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:ecommerceapp/app/modules/bag/controllers/bag_controller.dart';
import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectQty extends StatelessWidget {
  SelectQty({Key? key}) : super(key: key);
  final bagController = Get.put(BagController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      color: CommonColors().bgColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select Quantity",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500)),
                ),
                InkWell(
                  onTap: () => Get.back(),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomRadioButton(
                    defaultSelected: bagController.qtyValues[0],
                    elevation: 0,
                    enableShape: true,
                    radius: 50.r,
                    width: 60.h,
                    absoluteZeroSpacing: false,
                    unSelectedColor: Color.fromARGB(255, 14, 10, 32),
                    buttonLables: [
                      '1',
                      '2',
                      '3',
                      '5',
                      '6',
                      '7',
                      '8',
                      '9',
                      '10',
                    ],
                    buttonValues: bagController.qtyValues,
                    buttonTextStyle: ButtonTextStyle(
                        selectedColor: Colors.white,
                        unSelectedColor: Color.fromARGB(255, 203, 203, 203),
                        textStyle: TextStyle(fontSize: 16)),
                    radioButtonValue: (value) {
                      print(value);
                      bagController.changeQty(value);
                    },
                    selectedColor: CommonColors().buttonColor,
                    selectedBorderColor: CommonColors().buttonColor,
                    unSelectedBorderColor: CommonColors().buttonColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check, color: Colors.white),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text("Done")
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: CommonColors().buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    minimumSize: Size(200.w, 50.h)))
          ],
        ),
      ),
    );
  }
}
