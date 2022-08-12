import 'package:ecommerceapp/app/modules/bag/views/bag_view.dart';
import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/details/controllers/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Bottomcart extends StatelessWidget {
  Bottomcart({Key? key}) : super(key: key);
  final detailController = Get.put(DetailsController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GetBuilder<DetailsController>(builder: (controller) {
            return ElevatedButton(
                onPressed: () {
                  detailController.changeBagButton();
                  detailController.buttonValue
                      ? Get.to(BagView())
                      : Fluttertoast.showToast(msg: "Added to Bag");
                },
                child: Row(
                  children: [
                    Icon(Icons.shopping_bag, color: Colors.white),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(detailController.buttonValue
                        ? "GOTO BAG"
                        : "ADD TO BAG")
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: CommonColors().buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    minimumSize: Size(200.w, 50.h)));
          }),
          ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(msg: "Added to Wishlist");
              },
              child: Row(
                children: [
                  Icon(Icons.favorite_outline,
                      color: Color.fromARGB(255, 185, 183, 183)),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "WISHLIST",
                    style: TextStyle(color: Color.fromARGB(255, 185, 183, 183)),
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: CommonColors().buttonColor),
                  primary: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  minimumSize: Size(150.w, 50.h))),
        ],
      ),
    );
  }
}
