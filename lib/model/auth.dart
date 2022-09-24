class Auth {
  String fullName;
  String instituteName;
  String instituteId;
  String password;

  Auth({
    required this.fullName,
    required this.instituteName,
    required this.instituteId,
    required this.password,
  });

  factory Auth.fromJson(Map<String, dynamic> parsedJson) {
    return Auth(
      fullName: parsedJson['Full Name'],
      instituteName: parsedJson['Institute Name'],
      instituteId: parsedJson['Institute Id'],
      password: parsedJson['password'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'instituteName': instituteName,
      'instituteId': instituteId,
      'password': password
    };
  }
}
