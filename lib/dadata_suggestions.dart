library dadata_suggestions;

export 'src/model/address_response.dart';
export 'src/model/address_suggestion.dart';
export 'src/model/address_suggestion_constraint.dart';
export 'src/model/address_suggestion_priority.dart';
export 'src/model/address_suggestion_radius_constraint.dart';
export 'src/model/address_suggestion_request.dart';
export 'src/model/level_boundry.dart';
export 'src/model/revgeocode_suggestion_request.dart';
export 'src/model/suggestion_data.dart';

import 'dart:convert';

import 'src/constants.dart';
import 'src/model/address_suggestion_request.dart';
import 'src/model/revgeocode_suggestion_request.dart';
import 'src/model/address_response.dart';
import 'package:http/http.dart';

part 'src/dadata_client.dart';

/// DadataSuggestions is a class for making requests to
/// Dadata address suggestions and reverse geocoding APIs.
/// To instantiate it you should provide an API [token] to constructor.
class DadataSuggestions {
  final DadataClient _client;

  factory DadataSuggestions(String token) {
    return DadataSuggestions._internal(DadataClient.withToken(token));
  }

  DadataSuggestions._internal(this._client);

  /// Please pass [request] and
  /// an optional [completion] handler.
  /// Suggestions would be returned as [Future<AddressResponse>]
  /// or passed to completion block along with [Error] or [Exception] as [dynamic] if any.
  Future<AddressResponse> suggest(
    AddressSuggestionRequest request, {
    void Function(AddressResponse resp, dynamic e) completion,
  }) async {
    try {
      final resp = await _client.suggest(request);
      if (completion != null) {
        completion(resp, null);
      }
      return resp;
    } catch (e) {
      if (completion != null) {
        completion(null, e);
      }
      return null;
    }
  }

  /// Please pass [request] and
  /// an optional [completion] handler.
  /// Suggestions would be returned as [Future<AddressResponse>]
  /// or passed to completion block along with [Error] or [Exception] as [dynamic] if any.
  Future<AddressResponse> revGeocode(
    RevgeocodeSuggestionRequest request, {
    void Function(AddressResponse resp, dynamic e) completion,
  }) async {
    try {
      final resp = await _client.revGeocode(request);
      if (completion != null) {
        completion(resp, null);
      }
      return resp;
    } catch (e) {
      if (completion != null) {
        completion(null, e);
      }
      return null;
    }
  }
}
