import 'package:get/get.dart';

class DetailsController extends GetxController {
  List sizeValues = [
    '39',
    '40',
    '42',
    '44',
  ];
  String sizeText = '39';

  changeSizetext(value) {
    sizeText = value;
    update();
  }
}
