import 'package:ecommerceapp/app/modules/details/model/detail_model.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  List<DetailModel> cartItems = [];
  bool buttonValue = false;
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

  addtoCart(values) {
    cartItems.add(values);
    update();
  }

  changeBagButton() {
    buttonValue = true;
    update();
  }
}
