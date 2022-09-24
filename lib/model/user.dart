class UserModel {
  String userImage;
  String userId;
  String firstName;
  String lastName;
  String college;

  UserModel(
      {required this.userImage,
      required this.firstName,
      required this.userId,
      required this.lastName,
      required this.college});

  factory UserModel.fromJson(Map<String, dynamic> parsedJson) {
    return UserModel(
        userImage: parsedJson['userImage'],
        userId: parsedJson['userId'],
        firstName: parsedJson['firstName'],
        lastName: parsedJson['lastName'],
        college: parsedJson['college']);
  }

  Map<String, dynamic> toMap() {
    return {
      'userImage': userImage,
      'firstName': firstName,
      'lastName': lastName,
      'userId': userId,
      'college': college
    };
  }
}
