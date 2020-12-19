// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_suggestion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressSuggestionRequest _$AddressSuggestionRequestFromJson(
    Map<String, dynamic> json) {
  return AddressSuggestionRequest(
    json['query'] as String,
  )
    ..count = json['count'] as int
    ..language = json['language'] as String
    ..constraints = (json['locations'] as List)
        ?.map((e) => e == null
            ? null
            : AddressSuggestionConstraint.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..radiusConstraints = (json['locations_geo'] as List)
        ?.map((e) => e == null
            ? null
            : AddressSuggestionRadiusConstraint.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..locationsPriority = (json['locations_boost'] as List)
        ?.map((e) => e == null
            ? null
            : AddressSuggestionPriority.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..upperBoundary = json['from_bound'] as String
    ..lowerBoundary = json['to_bound'] as String;
}

Map<String, dynamic> _$AddressSuggestionRequestToJson(
        AddressSuggestionRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'count': instance.count,
      'language': instance.language,
      'locations': instance.constraints?.map((e) => e?.toJson())?.toList(),
      'locations_geo':
          instance.radiusConstraints?.map((e) => e?.toJson())?.toList(),
      'locations_boost':
          instance.locationsPriority?.map((e) => e?.toJson())?.toList(),
      'from_bound': instance.upperBoundary,
      'to_bound': instance.lowerBoundary,
    };
