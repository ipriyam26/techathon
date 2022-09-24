import 'package:get/get.dart';
import 'package:techathon/model/event.dart';

class EventController extends GetxController {
  List<Event> upcomingEvent = <Event>[].obs;

  @override
  void onReady() {
    upcomingEvent.add(
      Event(title: "Test app", location: "Bennett University", description: "fifbvfwefb fweukfbwekjfbe ejfnfsf", eventDate: DateTime.now(), availableSeats: 20, cost: 300, eventId: "ihbviwbfw4235aas", domain: "Web Development", imageUrl: 'https://images.unsplash.com/photo-1663841349085-593c41127967?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2474&q=80', maximumMembers: 5, minimumMembers: 1,)
    );

    super.onReady();
  }
  
}
