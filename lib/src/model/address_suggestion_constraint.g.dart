// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_suggestion_constraint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressSuggestionConstraint _$AddressSuggestionConstraintFromJson(
    Map<String, dynamic> json) {
  return AddressSuggestionConstraint()
    ..region = json['region'] as String
    ..city = json['city'] as String
    ..streetTypeFull = json['street_type_full'] as String
    ..settlementTypeFull = json['settlement_type_full'] as String
    ..cityDistrictTypeFull = json['city_district_type_full'] as String
    ..cityTypeFull = json['city_type_full'] as String
    ..areaTypeFull = json['area_type_full'] as String
    ..regionTypeFull = json['region_type_full'] as String
    ..country = json['country'] as String
    ..countryISOCode = json['country_iso_code'] as String
    ..regionISOCode = json['region_iso_code'] as String
    ..kladrId = json['kladr_id'] as String
    ..regionFIASId = json['region_fias_id'] as String
    ..areaFIASId = json['area_fias_id'] as String
    ..cityFIASId = json['city_fias_id'] as String
    ..settlementFIASId = json['settlement_fias_id'] as String
    ..streetFIASId = json['street_fias_id'] as String;
}

Map<String, dynamic> _$AddressSuggestionConstraintToJson(
        AddressSuggestionConstraint instance) =>
    <String, dynamic>{
      'region': instance.region,
      'city': instance.city,
      'street_type_full': instance.streetTypeFull,
      'settlement_type_full': instance.settlementTypeFull,
      'city_district_type_full': instance.cityDistrictTypeFull,
      'city_type_full': instance.cityTypeFull,
      'area_type_full': instance.areaTypeFull,
      'region_type_full': instance.regionTypeFull,
      'country': instance.country,
      'country_iso_code': instance.countryISOCode,
      'region_iso_code': instance.regionISOCode,
      'kladr_id': instance.kladrId,
      'region_fias_id': instance.regionFIASId,
      'area_fias_id': instance.areaFIASId,
      'city_fias_id': instance.cityFIASId,
      'settlement_fias_id': instance.settlementFIASId,
      'street_fias_id': instance.streetFIASId,
    };
