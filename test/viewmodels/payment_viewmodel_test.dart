import 'package:flutter_test/flutter_test.dart';
import 'package:boltclone_stacked/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('PaymentViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}