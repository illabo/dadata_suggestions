// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) {
  return AddressResponse()
    ..suggestions = (json['suggestions'] as List)
        ?.map((e) => e == null
            ? null
            : AddressSuggestion.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AddressResponseToJson(AddressResponse instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions?.map((e) => e?.toJson())?.toList(),
    };
