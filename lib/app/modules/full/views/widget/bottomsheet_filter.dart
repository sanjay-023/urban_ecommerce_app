import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/full/controllers/full_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterBottomSheet extends StatelessWidget {
  FilterBottomSheet({Key? key}) : super(key: key);
  final fullViewController = Get.put(FullController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      decoration: BoxDecoration(
          color: CommonColors().bgColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6.r), topRight: Radius.circular(6.r))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GetBuilder<FullController>(builder: (controller) {
          return Column(
            children: [
              Text(
                "Sort By",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Container(
                    color: fullViewController.selectedIndex == index
                        ? CommonColors().buttonColor
                        : Colors.transparent,
                    child: ListTile(
                      onTap: () {
                        fullViewController.changeActive(index);
                        fullViewController.changeFilterCategory(index);
                        Get.back();
                      },
                      title: Text(
                        fullViewController.filterList[index],
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.white, fontSize: 16.sp)),
                      ),
                    ),
                  );
                }),
                itemCount: fullViewController.filterList.length,
              ),
            ],
          );
        }),
      ),
    );
  }
}
