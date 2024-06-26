// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class AddressModel {
  String? addressId = "";
  String? mobile = "";
  String? address = "";
  String? cityId = "";
  String? cityName = "";
  String? latitude = "";
  String? longitude = "";
  String? area = "";
  String? type = "";
  String? countryCode = "";
  String? alternateMobile = "";
  String? landmark = "";
  String? pincode = "";
  String? state = "";
  String? country = "";
  String? isDefault = "";

  AddressModel({
    this.addressId,
    this.mobile,
    this.address,
    this.cityId,
    this.cityName,
    this.latitude,
    this.longitude,
    this.area,
    this.type,
    this.countryCode,
    this.alternateMobile,
    this.landmark,
    this.pincode,
    this.state,
    this.country,
    this.isDefault,
  });

  AddressModel copyWith({
    final String? addressId,
    final String? mobile,
    final String? address,
    final String? cityId,
    final String? cityName,
    final String? latitude,
    final String? longitude,
    final String? area,
    final String? type,
    final String? countryCode,
    final String? alternateMobile,
    final String? landmark,
    final String? pincode,
    final String? state,
    final String? country,
    final String? isDefault,
  }) =>
      AddressModel(
        addressId: addressId ?? this.addressId ?? '',
        mobile: mobile ?? this.mobile ?? '',
        address: address ?? this.address ?? '',
        cityId: cityId ?? this.cityId ?? '',
        cityName: cityName ?? this.cityName ?? '',
        latitude: latitude ?? this.latitude ?? '',
        longitude: longitude ?? this.longitude ?? '',
        area: area ?? this.area ?? '',
        type: type ?? this.type ?? '',
        countryCode: countryCode ?? this.countryCode ?? '',
        alternateMobile: alternateMobile ?? this.alternateMobile ?? '',
        landmark: landmark ?? this.landmark ?? '',
        pincode: pincode ?? this.pincode ?? '',
        state: state ?? this.state ?? '',
        country: country ?? this.country ?? '',
        isDefault: isDefault ?? this.isDefault ?? '',
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        "address_id": addressId,
        "mobile": mobile,
        "address": address,
        "city_id": cityId,
        "city_name": cityName,
        "latitude": latitude,
        "longitude": longitude,
        "area": area,
        "type": type,
        "country_code": countryCode,
        "alternate_mobile": alternateMobile,
        "landmark": landmark,
        "pincode": pincode,
        "state": state,
        "country": country,
        "is_default": isDefault,
      };

  factory AddressModel.fromMap(final Map<String, dynamic> map) => AddressModel(
        addressId: map["address_id"] as String?,
        mobile: map["mobile"] as String?,
        address: map["address"] as String?,
        cityId: map["city_id"] as String?,
        cityName: map["city_name"] as String?,
        latitude: map["latitude"] as String?,
        longitude: map["longitude"] as String?,
        area: map["area"] as String?,
        type: map["type"] as String?,
        countryCode: map["country_code"] as String?,
        alternateMobile: map["alternate_mobile"].toString(),
        landmark: map["landmark"] as String?,
        pincode: map["pincode"] as String?,
        state: map["state"] as String?,
        country: map["country"] as String?,
        isDefault: map["is_default"] as String?,
      );

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(final String source) =>
      AddressModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
