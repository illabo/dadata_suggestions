// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressSuggestion _$AddressSuggestionFromJson(Map<String, dynamic> json) {
  return AddressSuggestion(
    value: json['value'] as String,
    unrestrictedValue: json['unrestricted_value'] as String,
    data: json['data'] == null
        ? null
        : SuggestionData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AddressSuggestionToJson(AddressSuggestion instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unrestricted_value': instance.unrestrictedValue,
      'data': instance.data?.toJson(),
    };
