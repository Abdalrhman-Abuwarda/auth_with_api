class User {
  User._({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.mobile,
    required this.bio,
    required this.jobTitle,
    required this.latitude,
    required this.longitude,
    required this.country,
    required this.image,
    required this.active,
    required this.email_verified_at,
    required this.images_count,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String mobile;
  final String bio;
  final String jobTitle;
  final String latitude;
  final String longitude;
  final String country;
  final String image;
  final String active;
  final String email_verified_at;
  final String images_count;

  factory User.fromJson(Map<String, dynamic> json) => User._(
      firstName: json["first_name"],
      lastName: json["last_name"],
      email: json["email"],
    mobile: json["mobile"],
    bio: json["bio"],
    jobTitle: json["job_title"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    country: json["country"],
    image: json["image"],
    active: json["active"],
    email_verified_at: json["email_verified_at"],
    images_count: json["images_count"],
  );

}
