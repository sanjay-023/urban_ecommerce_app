import 'package:get/get.dart';

class FullController extends GetxController {
  //TODO: Implement FullController

  int selectedIndex = 0;
  String filterCategory = 'Popular';
  List filterList = [
    'Popular',
    'Newest',
    'Price : Low to High',
    'Price : High to Low'
  ];

  changeActive(index) {
    selectedIndex = index;
    update();
  }

  changeFilterCategory(index) {
    filterCategory = filterList[index];
    update();
  }
}
