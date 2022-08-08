import 'package:ecommerceapp/app/modules/full/controllers/full_controller.dart';
import 'package:ecommerceapp/app/modules/full/views/widget/bottomsheet_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterWidget extends StatelessWidget {
  FilterWidget({Key? key}) : super(key: key);
  final fullViewController = Get.put(FullController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.horizontal_split_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text("Filters",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white)))
              ],
            ),
            GetBuilder<FullController>(builder: (controller) {
              return Row(
                children: [
                  Icon(
                    Icons.compare_arrows_sharp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    fullViewController.filterCategory,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white)),
                  )
                ],
              );
            }),
            InkWell(
              onTap: () {
                Get.bottomSheet(FilterBottomSheet());
              },
              child: Row(
                children: [
                  Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
