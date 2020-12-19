import 'package:json_annotation/json_annotation.dart';
part 'address_suggestion_radius_constraint.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class AddressSuggestionRadiusConstraint {
  @JsonKey(name: "lat", required: true)
  double latitude;

  @JsonKey(name: "lon", required: true)
  double longitude;

  int _radiusMeters = 100;

  @JsonKey(name: "radius_meters")
  int get radiusMeters => _radiusMeters;

  @JsonKey(name: "radius_meters")
  set radiusMeters(int value) {
    if (value < 0) {
      _radiusMeters = 0;
      return;
    }
    if (value > 100000) {
      _radiusMeters = 100000;
      return;
    }
    _radiusMeters = value;
  }

  AddressSuggestionRadiusConstraint({this.latitude, this.longitude});

  AddressSuggestionRadiusConstraint.fromString(String latLon,
      {String delimiter = ','}) {
    final llParts = latLon.split(delimiter);
    if (llParts.length != 2) {
      throw 'Query string can not be split: wrong format or delimiter';
    }
    final lat = double.tryParse(llParts[0]);
    final lon = double.tryParse(llParts[1]);
    if (lat == null || lon == null) {
      throw 'Failed to parse coordinates';
    }
    AddressSuggestionRadiusConstraint(
      latitude: lat,
      longitude: lon,
    );
  }

  factory AddressSuggestionRadiusConstraint.fromJson(
          Map<String, dynamic> json) =>
      _$AddressSuggestionRadiusConstraintFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AddressSuggestionRadiusConstraintToJson(this);
}
