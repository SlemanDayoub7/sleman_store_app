// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      geolocation:
          Geolocation.fromJson(json['geolocation'] as Map<String, dynamic>),
      city: json['city'] as String,
      street: json['street'] as String,
      number: (json['number'] as num).toInt(),
      zipcode: json['zipcode'] as String,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'geolocation': instance.geolocation,
      'city': instance.city,
      'street': instance.street,
      'number': instance.number,
      'zipcode': instance.zipcode,
    };

Geolocation _$GeolocationFromJson(Map<String, dynamic> json) => Geolocation(
      lat: json['lat'] as String,
      long: json['long'] as String,
    );

Map<String, dynamic> _$GeolocationToJson(Geolocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };
