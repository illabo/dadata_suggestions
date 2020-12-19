import 'package:flutter_test/flutter_test.dart';

import 'package:dadata_suggestions/dadata_suggestions.dart';

void main() {
  test('Nothing', () {
    DadataSuggestions('');
    final nothing = null;
    expect(nothing, nothing);
  });
}
