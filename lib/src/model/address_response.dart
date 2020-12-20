import 'package:json_annotation/json_annotation.dart';
import 'address_suggestion.dart';
part 'address_response.g.dart';

/// Represents an object used to hold API response.
@JsonSerializable(explicitToJson: true, nullable: true)
class AddressResponse {
  @JsonKey(name: 'suggestions')
  List<AddressSuggestion> suggestions;

  AddressResponse();

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddressResponseToJson(this);
}
