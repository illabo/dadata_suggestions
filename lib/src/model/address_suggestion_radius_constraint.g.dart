// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_suggestion_radius_constraint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressSuggestionRadiusConstraint _$AddressSuggestionRadiusConstraintFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['lat', 'lon']);
  return AddressSuggestionRadiusConstraint(
    latitude: (json['lat'] as num)?.toDouble(),
    longitude: (json['lon'] as num)?.toDouble(),
  )..radiusMeters = json['radius_meters'] as int;
}

Map<String, dynamic> _$AddressSuggestionRadiusConstraintToJson(
        AddressSuggestionRadiusConstraint instance) =>
    <String, dynamic>{
      'lat': instance.latitude,
      'lon': instance.longitude,
      'radius_meters': instance.radiusMeters,
    };
