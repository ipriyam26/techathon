import 'package:get/get.dart';
import 'package:techathon/model/event.dart';

class EventController extends GetxController {
  List<Event> upcomingEvent = <Event>[].obs;

  // @override
  // void onReady() {
  //   upcomingEvent.add(Event(
  //     title: "Test app",
  //     location: "Bennett University",
  //     description: "TECHNO-FEST, the annual technical fest of IIMT Group of Colleges, is a kind of mélange celebrated with extravaganza, making it an essential part of course curriculum as it gives IIMTians a platform to showcase their innovative ideas and compete with their peers.",
  //     eventDate: DateTime.now(),
  //     availableSeats: 20,
  //     cost: 300,
  //     eventId: "ihbviwbfw4235aas",
  //     domain: "Web Development",
  //     imageUrl:
  //         'https://images.unsplash.com/photo-1520483691742-bada60a1edd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2736&q=80',
  //     maximumMembers: 5,
  //     minimumMembers: 1,
  //   ));

  //   super.onReady();
  // }

  @override
  void onInit() {
        upcomingEvent.add(Event(
      title: "Test app",
      location: "Bennett University",
      description: "TECHNO-FEST, the annual technical fest of IIMT Group of Colleges, is a kind of mélange celebrated with extravaganza, making it an essential part of course curriculum as it gives IIMTians a platform to showcase their innovative ideas and compete with their peers.",
      eventDate: DateTime.now(),
      availableSeats: 20,
      cost: 300,
      eventId: "ihbviwbfw4235aas",
      domain: "Web Development",
      imageUrl:
          'https://images.unsplash.com/photo-1520483691742-bada60a1edd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2736&q=80',
      maximumMembers: 5,
      minimumMembers: 1,
    ));

    super.onInit();
  }
}
