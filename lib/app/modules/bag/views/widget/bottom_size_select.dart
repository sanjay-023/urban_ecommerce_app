import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/details/controllers/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeConfirm extends StatelessWidget {
  SizeConfirm({Key? key}) : super(key: key);
  final detailController = Get.put(DetailsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      color: CommonColors().bgColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select Size",
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
            SizedBox(height: 16.h),
            Row(
              children: [
                CustomRadioButton(
                  defaultSelected: detailController.sizeValues[0],
                  elevation: 0,
                  enableShape: true,
                  radius: 50.r,
                  width: 60.h,
                  absoluteZeroSpacing: false,
                  unSelectedColor: Color.fromARGB(255, 14, 10, 32),
                  buttonLables: [
                    '39',
                    '40',
                    '42',
                    '44',
                  ],
                  buttonValues: detailController.sizeValues,
                  buttonTextStyle: ButtonTextStyle(
                      selectedColor: Colors.white,
                      unSelectedColor: Color.fromARGB(255, 203, 203, 203),
                      textStyle: TextStyle(fontSize: 16)),
                  radioButtonValue: (value) {
                    print(value);
                    detailController.changeSizetext(value);
                  },
                  selectedColor: CommonColors().buttonColor,
                  selectedBorderColor: CommonColors().buttonColor,
                  unSelectedBorderColor: CommonColors().buttonColor,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "\u{20B9} 800",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.white),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "60% OFF",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Color.fromARGB(255, 253, 22, 6),
                          fontSize: 14.sp)),
                )
              ],
            ),
            SizedBox(
              height: 14.h,
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
