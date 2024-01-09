library shared_models;

import 'dart:convert';

class Users {
  String name;
  String email;
  String password;
  String phone;
  String address;
  String city;
  String state;
  String country;
  String pincode;
  String image;
  String status;
  String created_at;
  String updated_at;
  Users({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
    required this.city,
    required this.state,
    required this.country,
    required this.pincode,
    required this.image,
    required this.status,
    required this.created_at,
    required this.updated_at,
  });

 

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'address': address,
      'city': city,
      'state': state,
      'country': country,
      'pincode': pincode,
      'image': image,
      'status': status,
      'created_at': created_at,
      'updated_at': updated_at,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      phone: map['phone'] as String,
      address: map['address'] as String,
      city: map['city'] as String,
      state: map['state'] as String,
      country: map['country'] as String,
      pincode: map['pincode'] as String,
      image: map['image'] as String,
      status: map['status'] as String,
      created_at: map['created_at'] as String,
      updated_at: map['updated_at'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Users.fromJson(String source) => Users.fromMap(json.decode(source) as Map<String, dynamic>);

  Users copyWith({
    String? name,
    String? email,
    String? password,
    String? phone,
    String? address,
    String? city,
    String? state,
    String? country,
    String? pincode,
    String? image,
    String? status,
    String? created_at,
    String? updated_at,
  }) {
    return Users(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
      image: image ?? this.image,
      status: status ?? this.status,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
    );
  }

  @override
  String toString() {
    return 'Users(name: $name, email: $email, password: $password, phone: $phone, address: $address, city: $city, state: $state, country: $country, pincode: $pincode, image: $image, status: $status, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(covariant Users other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.email == email &&
      other.password == password &&
      other.phone == phone &&
      other.address == address &&
      other.city == city &&
      other.state == state &&
      other.country == country &&
      other.pincode == pincode &&
      other.image == image &&
      other.status == status &&
      other.created_at == created_at &&
      other.updated_at == updated_at;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      email.hashCode ^
      password.hashCode ^
      phone.hashCode ^
      address.hashCode ^
      city.hashCode ^
      state.hashCode ^
      country.hashCode ^
      pincode.hashCode ^
      image.hashCode ^
      status.hashCode ^
      created_at.hashCode ^
      updated_at.hashCode;
  }
}

