import 'package:get/get.dart';

class BagController extends GetxController {
  //TODO: Implement BagController

  List qtyValues = [
    '1',
    '2',
    '3',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];

  String qtyText = '1';

  changeQty(value) {
    qtyText = value;
    update();
  }
}
