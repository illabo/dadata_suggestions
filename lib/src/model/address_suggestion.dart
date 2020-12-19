import 'package:json_annotation/json_annotation.dart';
import 'suggestion_data.dart';
part 'address_suggestion.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class AddressSuggestion {
  @JsonKey(name: 'value')
  String value;

  @JsonKey(name: 'unrestricted_value')
  String unrestrictedValue;

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
