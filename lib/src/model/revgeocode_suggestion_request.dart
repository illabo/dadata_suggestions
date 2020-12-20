import 'package:json_annotation/json_annotation.dart';
part 'revgeocode_suggestion_request.g.dart';

/// Used to call reverse geocoding API.
@JsonSerializable(explicitToJson: true, nullable: true)
class RevgeocodeSuggestionRequest {
  @JsonKey(name: "lat", required: true)
  double latitude;

  @JsonKey(name: "lon", required: true)
  double longitude;

  @JsonKey(name: 'count')
  int count = 10;

  @JsonKey(name: 'language')
  String language = 'ru';

  int _radiusMeters = 100;

  @JsonKey(name: "radius_meters")
  int get radiusMeters => _radiusMeters;

  @JsonKey(name: "radius_meters")
  set radiusMeters(int value) {
    if (value < 0) {
      _radiusMeters = 0;
      return;
    }
    if (value > 1000) {
      _radiusMeters = 1000;
      return;
    }
    _radiusMeters = value;
  }

  ///New instance of [RevgeocodeSuggestionRequest].
  ///[latitude] and [longitude] of the point of interest are required.
  ///[count] defaults to `10` and [language] defaults to `ru`.
  RevgeocodeSuggestionRequest({
    this.latitude,
    this.longitude,
    this.count,
    this.language,
    radiusMeters,
  });

  ///New instance may be created with query of [String] type instead of
  ///a pair of [double]s.
  ///Tries parse latitude and longitude out of string and throws if fails.
  RevgeocodeSuggestionRequest.fromString(String latLon,
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
    RevgeocodeSuggestionRequest(
      latitude: lat,
      longitude: lon,
    );
  }

  factory RevgeocodeSuggestionRequest.fromJson(Map<String, dynamic> json) =>
      _$RevgeocodeSuggestionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RevgeocodeSuggestionRequestToJson(this);
}
