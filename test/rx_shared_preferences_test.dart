import 'package:flutter_test/flutter_test.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

import 'like_shared_prefs_test.dart' as like_shared_prefs_test;
import 'logger/default_logger_test.dart' as default_logger_test;
import 'logger/logger_adapter_test.dart' as logger_adapter_test;
import 'map_not_null_test.dart' as map_not_null_test;
import 'model/key_and_value_test.dart' as key_and_value_test;
import 'streams_test.dart' as streams_test;
import 'to_single_subscription_stream_test.dart'
    as to_single_subscription_stream_test;

void main() {
  test('RxSharedPreferences.asserts', () {
    expect(
      () => RxSharedPreferences(null),
      throwsAssertionError,
    );
  });

  // logger
  default_logger_test.main();
  logger_adapter_test.main();

  // model
  key_and_value_test.main();

  // rx prefs
  like_shared_prefs_test.main();
  streams_test.main();

  // map not null & to single subscription
  map_not_null_test.main();
  to_single_subscription_stream_test.main();
}
