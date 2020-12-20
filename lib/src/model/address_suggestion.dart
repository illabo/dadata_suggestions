import 'package:json_annotation/json_annotation.dart';
import 'suggestion_data.dart';
part 'address_suggestion.g.dart';

/// Every single suggestion is represented as AddressSuggestion.
@JsonSerializable(explicitToJson: true, nullable: true)
class AddressSuggestion {
  ///Address in short format.
  @JsonKey(name: 'value')
  String value;

  ///Address in long format with a region included.
  @JsonKey(name: 'unrestricted_value')
  String unrestrictedValue;

  ///All the data returned in response to suggestion query.
  @JsonKey(name: 'data')
  SuggestionData data;

  AddressSuggestion({
    this.value,
    this.unrestrictedValue,
    this.data,
  });

  factory AddressSuggestion.fromJson(Map<String, dynamic> json) =>
      _$AddressSuggestionFromJson(json);

  Map<String, dynamic> toJson() => _$AddressSuggestionToJson(this);
}
