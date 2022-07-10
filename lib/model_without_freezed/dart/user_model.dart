class UserModel {
  final String firstName;
  final String lastName;
  final String emailId;
  final bool isActive;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.emailId,
    required this.isActive,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        firstName: json['firstName'],
        lastName: json['lastName'],
        emailId: json['emailId'],
        isActive: json['isActive']);
  }

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'emailId': emailId,
        'isActive': isActive,
      };
}
