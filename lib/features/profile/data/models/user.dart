import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String email;
  final String username;
  final String password;
  final Name name;
  final Address address;
  final String phone;
  User({
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.address,
    required this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@JsonSerializable()
class Name {
  final String firstname;
  final String lastname;

  Name({
    required this.firstname,
    required this.lastname,
  });

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@JsonSerializable()
class Address {
  final Geolocation geolocation;
  final String city;
  final String street;
  final int number;
  final String zipcode;

  Address({
    required this.geolocation,
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@JsonSerializable()
class Geolocation {
  final String lat;
  final String long;

  Geolocation({
    required this.lat,
    required this.long,
  });

  factory Geolocation.fromJson(Map<String, dynamic> json) =>
      _$GeolocationFromJson(json);
}
