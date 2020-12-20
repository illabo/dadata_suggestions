import 'package:json_annotation/json_annotation.dart';
part 'address_suggestion_priority.g.dart';

///Helps prioritize specified region in search results by KLADR ID.
@JsonSerializable(explicitToJson: true, nullable: true)
class AddressSuggestionPriority {
  @JsonKey(name: "kladr_id")
  String kladrId;

  /// KLADR ID [kladrId] should be provided to constructor.
  /// It is the only field in this class.
  /// AddressSuggestionPriority is used to sort results moving the
  /// best matches to the begining of the list rather then limiting
  /// only to selected region.
  /// To limit the search results please consider
  /// using [AddressSuggestionConstraint] or [AddressSuggestionRadiusConstraint].
  AddressSuggestionPriority(this.kladrId);

  factory AddressSuggestionPriority.fromJson(Map<String, dynamic> json) =>
      _$AddressSuggestionPriorityFromJson(json);

  Map<String, dynamic> toJson() => _$AddressSuggestionPriorityToJson(this);
}
