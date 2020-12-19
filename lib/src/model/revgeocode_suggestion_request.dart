import 'package:json_annotation/json_annotation.dart';
part 'revgeocode_suggestion_request.g.dart';

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

  RevgeocodeSuggestionRequest({this.latitude, this.longitude});

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
