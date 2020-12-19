import 'package:json_annotation/json_annotation.dart';
part 'address_suggestion_constraint.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class AddressSuggestionConstraint {
  @JsonKey(name: "region")
  String region;

  @JsonKey(name: "city")
  String city;

  @JsonKey(name: "street_type_full")
  String streetTypeFull;

  @JsonKey(name: "settlement_type_full")
  String settlementTypeFull;

  @JsonKey(name: "city_district_type_full")
  String cityDistrictTypeFull;

  @JsonKey(name: "city_type_full")
  String cityTypeFull;

  @JsonKey(name: "area_type_full")
  String areaTypeFull;

  @JsonKey(name: "region_type_full")
  String regionTypeFull;

  @JsonKey(name: "country")
  String country;

  @JsonKey(name: "country_iso_code")
  String countryISOCode;

  @JsonKey(name: "region_iso_code")
  String regionISOCode;

  @JsonKey(name: "kladr_id")
  String kladrId;

  @JsonKey(name: "region_fias_id")
  String regionFIASId;

  @JsonKey(name: "area_fias_id")
  String areaFIASId;

  @JsonKey(name: "city_fias_id")
  String cityFIASId;

  @JsonKey(name: "settlement_fias_id")
  String settlementFIASId;

  @JsonKey(name: "street_fias_id")
  String streetFIASId;

  AddressSuggestionConstraint();

  factory AddressSuggestionConstraint.fromJson(Map<String, dynamic> json) =>
      _$AddressSuggestionConstraintFromJson(json);

  Map<String, dynamic> toJson() => _$AddressSuggestionConstraintToJson(this);
}
