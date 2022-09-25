class Certificate {
  final int status;
  final String eventImage;
  final String imageUrl;
  final String domain;
  final String title;
  final String location;
  final DateTime completedDate;
  final String? downloadLink;

  Certificate(
      {
        required this.eventImage,
        required this.status,
      required this.imageUrl,
      required this.domain,
      required this.title,
      required this.location,
      required this.completedDate,
      required this.downloadLink});

  factory Certificate.fromJson(Map<String, dynamic> json) {
    return Certificate(
      eventImage: json['eventImage'],
        status: json['status'],
        imageUrl: json['imageUrl'],
        domain: json['domain'],
        title: json['title'],
        location: json['location'],
        completedDate: json['completedDate'],
        downloadLink: json['downloadLink']);
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'eventImage': eventImage,
      'imageUrl': imageUrl,
      'domain': domain,
      'title': title,
      'location': location,
      'completedDate': completedDate,
      'downloadLink': downloadLink
    };
  }
}
