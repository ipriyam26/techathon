class Event {
  final String title;
  final String location;
  final String description;
  final DateTime eventDate;
  final String eventId;
  final String imageUrl;
  final int availableSeats;
  final String domain;
  final int cost;
  final int minimumMembers;
  final int maximumMembers;

  Event({
    required this.title,
    required this.location,
    required this.description,
    required this.eventDate,
    required this.availableSeats,
    required this.cost,
    required this.eventId,
    required this.domain,
    required this.imageUrl,
    required this.maximumMembers,
    required this.minimumMembers,
  });

  factory Event.fromJson(Map<String, dynamic> parsedJson) {
    return Event(
      title: parsedJson['title'],
      location: parsedJson['location'],
      description: parsedJson['description'],
      eventDate: parsedJson['eventDate'],
      availableSeats: parsedJson['availableSeats'],
      cost: parsedJson['cost'],
      eventId: parsedJson['event_id'],
      domain: parsedJson['domain'],
      imageUrl: parsedJson['imageUrl'],
      maximumMembers: parsedJson['maximumMembers'],
      minimumMembers: parsedJson['minimumMembers'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'location': location,
      'eventDate': eventDate,
      'availableSeats': availableSeats,
      'cost': cost,
      'event_id': eventId,
      'domain': domain,
      'imageUrl': imageUrl,
      'maximumMembers': maximumMembers,
      'minimumMembers': minimumMembers,
    };
  }
}
