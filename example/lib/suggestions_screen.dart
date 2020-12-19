import 'package:flutter/material.dart';
import 'package:dadata_suggestions/dadata_suggestions.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SuggestionsScreen extends StatefulWidget {
  final String token;

  SuggestionsScreen({Key key, this.token}) : super(key: key);

  @override
  _SuggestionsScreenState createState() => _SuggestionsScreenState();
}

class _SuggestionsScreenState extends State<SuggestionsScreen> {
  DadataSuggestions _suggestions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Try query'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(24),
            child: TypeAheadField(
              debounceDuration: Duration(milliseconds: 600),
              suggestionsCallback: _startSuggesting,
              itemBuilder: (context, suggestion) {
                final s = suggestion as AddressSuggestion;
                return Container(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(s.unrestrictedValue),
                  ),
                );
              },
              onSuggestionSelected: (a) {},
            ),
          ),
        ],
      ),
    );
  }

  Future<List<AddressSuggestion>> _startSuggesting(String text) async {
    final tpts = text.split(',');
    if (tpts.length == 2) {
      final lat = double.tryParse(tpts[0]);
      final lon = double.tryParse(tpts[1]);
      print("found lat $lat lon $lon");
      if (lat != null && lon != null) {
        try {
          final resp = await _suggestions.revGeocode(
            RevgeocodeSuggestionRequest(
              latitude: lat,
              longitude: lon,
            ),
          );
          if (resp != null && resp.suggestions.isNotEmpty) {
            return resp.suggestions;
          }
        } catch (e) {
          print("Caught error in revgeocode $e");
        }
      }
    }
    try {
      final resp = await _suggestions.suggest(
        AddressSuggestionRequest(
          text,
        ),
      );
      if (resp != null && resp.suggestions.isNotEmpty) {
        return resp.suggestions;
      }
    } catch (e) {
      print("Caught error in suggestion query $e");
    }
    return [];
  }

  @override
  void initState() {
    _suggestions = DadataSuggestions(widget.token);
    super.initState();
  }

  @override
  void dispose() {
    _suggestions = null;
    super.dispose();
  }
}
