enum ApplyingWith { solo, haveTeam, lookingForTeam }

enum Gender { male, female, others }

enum Graduate {
  undergraduate,
  postgraduate,
  doctorate,
}

class Education {
  final Graduate graduate;
  final String university;

  Education({required this.graduate, required this.university});
  factory Education.fromJson(Map<String, dynamic> json) {
    return Education(
      graduate: json['graduate'],
      university: json['university'],
    );
  }

    Map<String, dynamic> toMap() {
    return {
      'graduate': graduate.name,
      'university': university,
    };
  }
}

class Tracks {
  final bool isFirstHackathon;
  final int degreeYear;
  final List<String> learnAbout;

  Tracks({
    required this.isFirstHackathon,
    required this.degreeYear,
    required this.learnAbout,
  });

  factory Tracks.fromJson(Map<String, dynamic> json) {
    return Tracks(
      isFirstHackathon: json['isFirstHackathon'],
      degreeYear: json['degreeYear'],
      learnAbout: json['learnAbout'],
    );
  }

    Map<String, dynamic> toMap() {
    return {
        'isFirstHackathon': isFirstHackathon,
        'degreeYear': degreeYear,
        'learnAbout': learnAbout,
      };
  }
}

enum TShirtSize { xs, s, m, l, xl, xxl, xxxl }

class EventInfo {
  final TShirtSize? size;
  final String? resumeUrl;
  final String? githubUrl;
  final String? linkedinUrl;
  final String? portfolioUrl;
  final String? fullAddress;
  final String country;

  EventInfo({
    this.size,
    this.resumeUrl,
    this.githubUrl,
    this.linkedinUrl,
    this.portfolioUrl,
    this.fullAddress,
    required this.country,
  });

  factory EventInfo.fromJson(Map<String, dynamic> json) {
    return EventInfo(
        size: json['size'],
        resumeUrl: json['resumeUrl'],
        githubUrl: json['githubUrl'],
        linkedinUrl: json['linkedinUrl'],
        portfolioUrl: json['portfolioUrl'],
        fullAddress: json['fullAddress'],
        country: json['country']);
  }
    Map<String, dynamic> toMap() {
   return {
      'size': size,
      'resumeUrl': resumeUrl,
      'githubUrl': githubUrl,
      'linkedinUrl': linkedinUrl,
      'portfolioUrl': portfolioUrl,
      'fullAddress': fullAddress,
      'country': country,
    };
  }
}

class Register {
  final String teamName;
  final String imageUrl;
  final String name;
  final ApplyingWith applyingWith;
  final String phoneNumber;
  final String email;
  final Gender gender;
  final int age;
  final Education? education;
  final Tracks? tracks;
  final EventInfo? eventInfo;

  Register({
    required this.teamName,
    required this.imageUrl,
    required this.name,
    required this.applyingWith,
    required this.phoneNumber,
    required this.email,
    required this.age,
    required this.gender,
    this.education,
    this.tracks,
    this.eventInfo,
  });

  factory Register.fromJson(Map<String, dynamic> json) {
    return Register(
        teamName: json['teamName'],
        imageUrl: json['imageUrl'],
        name: json['name'],
        applyingWith: json['applyingWith'],
        phoneNumber: json['phoneNumber'],
        email: json['email'],
        age: json['age'],
        gender: json['gender'],
        education: json['education'] != null
            ? Education.fromJson(json['education'])
            : null,
        tracks: json['tracks'] != null ? Tracks.fromJson(json['tracks']) : null,
        eventInfo: json['eventInfo'] != null
            ? EventInfo.fromJson(json['eventInfo'])
            : null);
  }

  Map<String, dynamic> toMap() {
    return {
      'teamName': teamName,
      'imageUrl': imageUrl,
      'name': name,
      'applyingWith': applyingWith.name,
      'phoneNumber': phoneNumber,
      'email': email,
      'age': age,
      'gender':gender.name,
      'education': education==null?"null": education?.toMap(),
      'tracks': tracks==null?"null" :tracks?.toMap(),
      'eventInfo': eventInfo==null?"null":eventInfo?.toMap(),
    };
  }
}
