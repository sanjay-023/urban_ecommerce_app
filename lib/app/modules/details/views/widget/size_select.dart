import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/details/controllers/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeSelect extends StatelessWidget {
  SizeSelect({Key? key}) : super(key: key);
  final detailController = Get.put(DetailsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 14, 10, 32),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<DetailsController>(builder: (controller) {
                  return Text(
                    "Size: ${detailController.sizeText}",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500)),
                  );
                }),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Size chart",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: CommonColors().buttonColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500)),
                    ))
              ],
            ),
            Row(
              children: [
                CustomRadioButton(
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
          ],
        ),
      ),
    );
  }
}
