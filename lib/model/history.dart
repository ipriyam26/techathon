class History {
  final bool isCertificate;
  final int color;
  final String location;
  final String festName;
  final String festCategory;
  final DateTime festDate;

  History(
      {required this.isCertificate,
      required this.color,
      required this.location,
      required this.festName,
      required this.festCategory,
      required this.festDate});

  factory History.fromJson(Map<String, dynamic> parsedJson) {
    return History(
        isCertificate: parsedJson['isCertificate'],
        color: parsedJson['color'],
        location: parsedJson['location'],
        festDate: parsedJson['festDate'],
        festCategory: parsedJson['festCategory'],
        festName: parsedJson['festName']);
  }

  Map<String, dynamic> toMap() {
    return {
      'color': color,
      'location': location,
      'festDate': festDate,
      'festCategory': festCategory,
      'festName': festName
    };
  }
}
