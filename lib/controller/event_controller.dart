import 'package:get/get.dart';
import 'package:techathon/model/event.dart';

class EventController extends GetxController {
  List<Event> upcomingEvent = <Event>[].obs;

  @override
  void onInit() {
    List<Map<String, dynamic>> data = [
      {
        'title': 'Test app',
        'location': 'Bennett University',
        'description':
            'TECHNO-FEST, the annual technical fest of IIMT Group of Colleges, is a kind of mélange celebrated with extravaganza, making it an essential part of course curriculum as it gives IIMTians a platform to showcase their innovative ideas and compete with their peers.',
        'eventDate': DateTime.now(),
        'availableSeats': 20,
        'cost': 300,
        'eventId': 'ihbviwbfw4235aas',
        'domain': 'Web Development',
        'imageUrl':
            'https://images.unsplash.com/photo-1520483691742-bada60a1edd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2736&q=80',
        'maximumMembers': 5,
        'minimumMembers': 1,
      },
      {
        'title': 'Techathon',
        'location': 'Bennett University',
        'description':
            'Explanation: The value property of the CheckBox is set to false at the starting of _HomePageState class. The CheckBox widget is pace in the front of a Text widget separated by a SizedBox inside a Row. The first thing inside the CheckBox widget is calling of the value property. Then we have onChanged property which holding a function to change the state of CheckBox, which makes the CheckBox checked on click. Doing all this we have got a task which can be checked.',
        'eventDate': DateTime(2022, 10, 10),
        'availableSeats': 200,
        'cost': 0,
        'eventId': 'e4dviwbfw4235aas',
        'domain': 'Flutter Development',
        'imageUrl':
            'https://images.unsplash.com/photo-1582275902060-7a4368e84acc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
        'maximumMembers': 1,
        'minimumMembers': 1,
      },
      {
        'title': 'Compathon',
        'location': 'IIT Kanpur',
        'description':
            "Hello, it's me I was wondering if after all these years you'd like to meet To go over everything They say that time's supposed to heal ya, but I ain't done much healing Hello, can you hear me? I'm in California dreaming about who we used to be When we were younger and free I've forgotten how it felt before the world fell at our feet There's such a difference between us And a million miles Hello from the other side I must've called a thousand times To tell you I'm sorry for everything that I've done But when I call, you never seem to be home Hello from the outside At least I can say that I've tried To tell you I'm sorry for breaking your heart But it don't matter, it clearly doesn",
        'eventDate': DateTime(2022, 11, 10),
        'availableSeats': 100,
        'cost': 1000,
        'eventId': 'e4dviwbfwu7z5aas',
        'domain': 'Hackathon',
        'imageUrl':
            'https://images.unsplash.com/photo-1604161546853-1a097fbc30fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1042&q=80',
        'maximumMembers': 5,
        'minimumMembers': 2,
      }
    ];

    upcomingEvent = data.map((e) => Event.fromJson(e)).toList();
    super.onInit();
  }
}
