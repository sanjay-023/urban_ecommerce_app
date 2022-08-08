import 'package:ecommerceapp/app/modules/bag/views/widget/bottom_size_select.dart';
import 'package:ecommerceapp/app/modules/bag/views/widget/select_qty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BagTile extends StatelessWidget {
  const BagTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14.h),
      child: Container(
        color: Color.fromARGB(255, 14, 10, 32),
        height: 220.h,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                width: 140.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("asset/image/Wdress_1.jpg"))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Container(
                  width: 200.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ketch",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Icon(
                            Icons.close,
                            color: Color.fromARGB(255, 200, 198, 198),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Women Evening Dress",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w400)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Sold by: Truenet Traders",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 182, 182, 182),
                                    fontSize: 12.sp,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w400)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () => Get.bottomSheet(SizeConfirm()),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 207, 205, 205),
                                  borderRadius: BorderRadius.circular(4.r)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "Size: 44",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    Icon(Icons.arrow_drop_down)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          InkWell(
                            onTap: () => Get.bottomSheet(SelectQty()),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 207, 205, 205),
                                  borderRadius: BorderRadius.circular(4.r)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "Qty: 1",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    Icon(Icons.arrow_drop_down)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
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
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: Color.fromARGB(255, 4, 203, 11),
                          ),
                          Text(
                            "Delivery by",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 12.sp)),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            "19 Aug 2022",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
