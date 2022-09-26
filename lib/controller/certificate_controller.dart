import 'package:get/get.dart';
import 'package:techathon/model/certificate.dart';

class CertificateController extends GetxController {
  List<Certificate> certificateList = <Certificate>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    List<Map<String, dynamic>> data = [
      {
        'title': 'Certificate 1',
        'status': 0,
        'downloadLink': 'https://static8.depositphotos.com/1062042/972/v/450/depositphotos_9725775-stock-illustration-gold-detailed-certificate.jpg',
        'domain': 'Flutter',
        'location': 'India',
        'completedDate': DateTime(2021, 10, 10),
        'eventImage':
            'https://images.unsplash.com/photo-1508161773455-3ada8ed2bbec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80'
      },
      {
        'title': 'Compton',
        'status': 2,
        'downloadLink': 'https://thumbs.dreamstime.com/b/certificate-achievement-18582409.jpg',
        'domain': 'Flutter',
        'location': 'India',
        'completedDate': DateTime(2021, 10, 10),
        'eventImage':
            'https://images.unsplash.com/photo-1562448079-b5631888445f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80'
      },
    ];
    certificateList = data.map((e) => Certificate.fromJson(e)).toList();
    refresh();
    print(certificateList.length);
    super.onInit();
  }
}
