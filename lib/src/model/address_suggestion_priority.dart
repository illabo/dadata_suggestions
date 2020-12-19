import 'package:json_annotation/json_annotation.dart';
part 'address_suggestion_priority.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class AddressSuggestionPriority {
  @JsonKey(name: "kladr_id")
  String kladrId;

  AddressSuggestionPriority(this.kladrId);

  factory AddressSuggestionPriority.fromJson(Map<String, dynamic> json) =>
      _$AddressSuggestionPriorityFromJson(json);

  Map<String, dynamic> toJson() => _$AddressSuggestionPriorityToJson(this);
}
