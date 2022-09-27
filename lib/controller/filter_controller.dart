import 'package:get/get.dart';
import 'package:techathon/model/event.dart';

class FilterListController extends GetxController {
  var _selectedList = List<String>.empty(growable: true).obs;
  List<String> finalList = <String>[];

  getSelectedList() => finalList;

  getListLength() => finalList.length;

  @override
  void onInit() {
    finalList = _selectedList.toSet().toList();
    super.onInit();
  }

  setSelectedList(List<String> list) => _selectedList.value = list;
}
