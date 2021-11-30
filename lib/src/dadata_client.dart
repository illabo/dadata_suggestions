part of dadata_suggestions;

/// Provides actual API calling.
class DadataClient {
  final _client = Client();
  String _token;
  Map<String, String> get _headers {
    return {
      "Authorization": "Token $_token",
      "Content-Type": "application/json",
    };
  }

  DadataClient._internal();

  factory DadataClient.withToken(String token) {
    return DadataClient._internal().._token = token;
  }

  /// Calls suggestions API with [AddressSuggestionRequest] provided.
  Future<AddressResponse> suggest(AddressSuggestionRequest query) async {
    try {
      final q = query.toJson();
      return _performRequest(q, Constants.addressEndpoint);
    } catch (e) {
      throw e;
    }
  }

  /// Calls reverse geocoding API with [RevgeocodeSuggestionRequest] provided.
  Future<AddressResponse> revGeocode(RevgeocodeSuggestionRequest query) async {
    try {
      final q = query.toJson();
      return _performRequest(q, Constants.revGeocodeEndpoint);
    } catch (e) {
      throw e;
    }
  }

  Future<AddressResponse> _performRequest(
    dynamic query,
    String endpoint,
  ) async {
    try {
      final resp = await _client.post(
        Uri.parse(endpoint),
        headers: _headers,
        body: jsonEncode(query),
      );
      if (resp?.body?.isNotEmpty ?? false) {
        return AddressResponse.fromJson(jsonDecode(resp.body));
      }
      return null;
    } catch (e) {
      throw e;
    }
  }
}
