import 'package:meta/meta.dart';
import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  ProfileModel({
    @required this.id,
    @required this.name,
    @required this.email,
    @required this.contact,
    @required this.image,
    @required this.billingAddress,
  });

  int? id;
  String? name, email, contact, image;
  BillingAddress? billingAddress;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        contact: json["contact"] == null ? null : json["contact"],
        image: json["image"] == null ? null : json["image"],
        billingAddress: json["billing_address"] == null
            ? null
            : BillingAddress.fromJson(json["billing_address"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "contact": contact == null ? null : contact,
        "image": image == null ? null : image,
        "billing_address":
            billingAddress == null ? null : billingAddress!.toJson(),
      };
}

class BillingAddress {
  BillingAddress({
    @required this.contact,
    @required this.area,
    @required this.appartment,
    @required this.house,
    @required this.road,
    @required this.city,
    @required this.district,
    @required this.zipCode,
  });

  String? contact, area, appartment, house, road, city, district, zipCode;

  factory BillingAddress.fromJson(Map<String, dynamic> json) => BillingAddress(
        contact: json["contact"] == null ? null : json["contact"],
        area: json["area"] == null ? null : json["area"],
        appartment: json["appartment"] == null ? null : json["appartment"],
        house: json["house"] == null ? null : json["house"],
        road: json["road"] == null ? null : json["road"],
        city: json["city"] == null ? null : json["city"],
        district: json["district"] == null ? null : json["district"],
        zipCode: json["zip_code"] == null ? null : json["zip_code"],
      );

  Map<String, dynamic> toJson() => {
        "contact": contact == null ? null : contact,
        "area": area == null ? null : area,
        "appartment": appartment == null ? null : appartment,
        "house": house == null ? null : house,
        "road": road == null ? null : road,
        "city": city == null ? null : city,
        "district": district == null ? null : district,
        "zip_code": zipCode == null ? null : zipCode,
      };
}
