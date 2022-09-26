import 'package:get/get.dart';
import 'package:techathon/model/history.dart';

class HistoryController extends GetxController {
  List<History> festHistory = <History>[].obs;

  @override
  void onInit() {
    festHistory.add(History(
      color: 0xFFFE724C,
      isCertificate: true,
      location: 'Asia',
      festName: 'Break the Code',
      festCategory: 'Techathon',
      festDate: DateTime.now(),
    ));

    super.onInit();
  }
}
